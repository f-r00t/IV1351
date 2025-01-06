import postgres from 'postgres';

const sql = postgres({
  host: "localhost",
  port: 5432,
  database: "harry",
  username: "harry",
  password: ""
});

export default sql;

export async function fetchAvailableInstruments(instrument_type) {
    return await sql`
      SELECT * FROM public.instruments
      WHERE rented = b'0'
      ${instrument_type != null ? sql`AND instrument_type = ${instrument_type}` : sql``}
      ORDER BY instrument_id ASC
    `;
  }
  

export async function fetchStudents() {
  return await sql`
    SELECT * FROM public.person
    WHERE person_type = 2
  `;
}

export async function rentInstrumentTransaction(student_id, instrument_id, currentTime) {
    try {
      await sql.begin('read write', async sql => {

        const instrument = await sql`
          SELECT * FROM public.instruments
          WHERE instrument_id = ${instrument_id}
          FOR UPDATE
        `;
  
        const rentalResult = await sql`
          INSERT INTO public.rentals (start_time, end_time, person_id, instrument_id)
          VALUES (${currentTime}, NULL, ${student_id}, ${instrument_id})
        `;
  
        const updateInstrumentResult = await sql`
          UPDATE public.instruments
          SET rented = b'1'
          WHERE instrument_id = ${instrument_id}
        `;
  
        await sql.prepare('tx_rent_instrument');
  
        console.log('Transaction prepared');
      });
  
      await sql`
        COMMIT PREPARED 'tx_rent_instrument'
      `;
    } catch (error) {
      console.error('Error occurred, rolling back transaction:', error);
  
      try {
        await sql`
          ROLLBACK PREPARED 'tx_rent_instrument'
        `;
      } catch (rollbackError) {
        console.error('Failed to rollback transaction:', rollbackError);
      }
    }
  }
  
  

  export async function terminateRentalTransaction(student_id, instrument_id, currentTime) {
    try {
      await sql.begin('read write', async sql => {

        const rental = await sql`
          SELECT * FROM public.rentals
          WHERE person_id = ${student_id} AND instrument_id = ${instrument_id} AND end_time IS NULL
          FOR UPDATE
        `;
  
        if (!rental || rental.length === 0) {
          throw new Error('Active rental not found for the given student and instrument.');
        }
  
        const instrument = await sql`
          SELECT * FROM public.instruments
          WHERE instrument_id = ${instrument_id}
          FOR UPDATE
        `;
  
        if (!instrument || instrument.length === 0) {
          throw new Error('Instrument not found.');
        }
  
        if (!instrument[0].rented) {
          throw new Error('Instrument is not currently rented.');
        }
  
        const terminateRentalResult = await sql`
          UPDATE public.rentals
          SET end_time = ${currentTime}
          WHERE person_id = ${student_id} AND instrument_id = ${instrument_id} AND end_time IS NULL
        `;
  
        const updateInstrumentResult = await sql`
          UPDATE public.instruments
          SET rented = b'0'
          WHERE instrument_id = ${instrument_id}
        `;

        await sql.prepare('tx_terminate_rental');
  
      });
  
      await sql`
        COMMIT PREPARED 'tx_terminate_rental'
      `;
    } catch (error) {
      console.error('Error occurred, rolling back transaction:', error);
  
      try {
        await sql`
          ROLLBACK PREPARED 'tx_terminate_rental'
        `;
      } catch (rollbackError) {
        console.error('Failed to rollback transaction:', rollbackError);
      }
    }
  }
  

export async function fetchAllOngoingRentals() {
  return await sql`
    SELECT * FROM public.rentals
    WHERE end_time IS NULL
  `;
}
