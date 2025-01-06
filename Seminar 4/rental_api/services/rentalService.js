import {
  readAvailableInstruments,
  readStudents,
  createInstrumentTransaction,
  deleteRentalTransaction,
  readAllOngoingRentals
} from '../db/db.js';

function getCurrentTimeFormatted() {
  const now = new Date();
  const isoString = now.toISOString();
  return isoString.replace('T', ' ').slice(0, 19) + '+00';
}

export async function getAvailableInstruments(instrument) {

  let instrument_type;

  switch (instrument) {

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
  const instruments = await readAvailableInstruments(instrument_type);
  return instruments;
}

export async function listStudents() {
  return await readStudents();
}

export async function rentInstrument(student_id, instrument_id) {
  const currentTime = getCurrentTimeFormatted();
  await createInstrumentTransaction(student_id, instrument_id, currentTime);
}

export async function terminateRental(student_id, instrument_id) {
  const currentTime = getCurrentTimeFormatted();
  await deleteRentalTransaction(student_id, instrument_id, currentTime);
}

export async function getAllRentals() {
  return await readAllOngoingRentals();
}
