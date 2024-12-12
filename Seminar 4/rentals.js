import sql from './rental_api/db/db.js'

function getCurrentTimeFormatted() {
    const now = new Date();
    const isoString = now.toISOString();
    return isoString.replace('T', ' ').slice(0, 19) + '+00';
  }

async function getRentalListings(instrument_type) {
  const instruments = await sql`
    SELECT * FROM public.instruments
    WHERE instrument_type = ${instrument_type} AND rented = b'0'
    ORDER BY instrument_id ASC 
  `
  return instruments;
}


async function rentInstrument(student_id, instrument_id) {

    // Get number of rentals for student_id:
    const rented_instruments = await sql`
        SELECT count(*) FROM public.rentals WHERE person_id = ${student_id} AND end_time IS NULL
    `

    // See if instrument is already rented:
    const is_instrument_rented = await sql`
        SELECT count(*) FROM public.rentals WHERE instrument_id = ${instrument_id} AND end_time IS NULL
    `


    console.log('rented_instruments', rented_instruments[0].count);
    if (rented_instruments[0].count > 1 || is_instrument_rented[0].count != 0) return;

    const [result, result2] = await sql.begin(async sql => {
        const [result] = await sql`
        INSERT INTO public.rentals (start_time, end_time, person_id, instrument_id)
        VALUES (${getCurrentTimeFormatted()}, NULL, ${student_id}, ${instrument_id})
    `
      
        const [result2] = await sql`
        UPDATE public.instruments
        SET rented = b'1'
        WHERE instrument_id = ${instrument_id}
    `;
      
        return [result, result2]
      })


    return result;
}

async function terminateRental(student_id, instrument_id) {

    const [result, result2] = await sql.begin(async sql => {
        const [result] = await sql`
        UPDATE public.rentals
        SET end_time = ${getCurrentTimeFormatted()}
        WHERE person_id = ${student_id} AND instrument_id = ${instrument_id} AND end_time IS NULL
    `
      
        const [result2] = await sql`
        UPDATE public.instruments
        SET rented = b'0'
        WHERE instrument_id = ${instrument_id}
    `;
      
        return [result, result2]
      })

    return result;
}

async function test() {
    console.log('Get available Pianos:')
    const results = await getRentalListings(1);
    results.map(i => {
        console.log(`ID: ${i.instrument_id} Brand: ${i.brand}, Price: ${i.fee} kr / month`)
    });
    // await terminateRental(26, 21);
    // await rentInstrument(27, 21);
    // return;
    await terminateRental(27, 21);
    return;
}

test();

export default getRentalListings;