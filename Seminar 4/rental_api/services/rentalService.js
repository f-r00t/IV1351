import sql from '../db/db.js'

function getCurrentTimeFormatted() {
    const now = new Date();
    const isoString = now.toISOString();
    return isoString.replace('T', ' ').slice(0, 19) + '+00';
  }

// Get available instruments
export async function getAvailableInstruments(instrumentType) {
    console.log('Getting instruments', instrumentType);
    let instrument_type;
    switch (instrumentType) {
        case "piano":
          instrument_type = 1;
          break;
    
        case "guitar":
          instrument_type = 2;
          break;
    
        case "violin":
          instrument_type = 3;
          break;
    
        case "drums":
          instrument_type = 4;
          break;
    
        case "flute":
          instrument_type = 5;
          break;
    
        case "saxophone":
          instrument_type = 6;
          break;
    
        case "trumpet":
          instrument_type = 7;
          break;
    
        case "cello":
          instrument_type = 8;
          break;
    
        case "clarinet":
          instrument_type = 9;
          break;
    
        case "bass guitar":
          instrument_type = 10;
          break;
    
        default:
          instrument_type = null;
          break;
      }
    

    console.log('Getting instruments', instrument_type);

    const instruments = await sql`
        SELECT * FROM public.instruments
        WHERE instrument_type = ${instrument_type} AND rented = b'0'
        ORDER BY instrument_id ASC 
    `
    console.log(instruments);
    return instruments;
}

// Rent an instrument
export async function rentInstrument(student_id, instrument_id) {

    // Get number of rentals for student_id:
    const rented_instruments = await sql`
        SELECT count(*) FROM public.rentals WHERE person_id = ${student_id} AND end_time IS NULL
    `

    // See if instrument is already rented:
    const is_instrument_rented = await sql`
        SELECT count(*) FROM public.rentals WHERE instrument_id = ${instrument_id} AND end_time IS NULL
    `
    if (is_instrument_rented[0].count != 0) throw new Error('Instrument already rented');

    if (rented_instruments[0].count > 1) throw new Error('Student is already renting two instruments. Sorry bro!');

    const result = await sql`
        INSERT INTO public.rentals (start_time, end_time, person_id, instrument_id)
        VALUES (${getCurrentTimeFormatted()}, NULL, ${student_id}, ${instrument_id})
    `;

    const result2 = await sql`
        UPDATE public.instruments
        SET rented = b'1'
        WHERE instrument_id = ${instrument_id}
    `;
}

// Terminate a rental
export async function terminateRental(student_id, instrument_id) {

        const result = await sql`
            UPDATE public.rentals
            SET end_time = ${getCurrentTimeFormatted()}
            WHERE person_id = ${student_id} AND instrument_id = ${instrument_id} AND end_time IS NULL
        `
    
        // console.log(result);
    
        const result2 = await sql`
            UPDATE public.instruments
            SET rented = b'0'
            WHERE instrument_id = ${instrument_id}
        `;
    
        // console.log(removed);
    
}
