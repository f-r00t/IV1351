import {
  fetchAvailableInstruments,
  fetchStudents,
  rentInstrumentTransaction,
  terminateRentalTransaction,
  fetchAllOngoingRentals
} from '../db/db.js';

function getCurrentTimeFormatted() {
  const now = new Date();
  const isoString = now.toISOString();
  return isoString.replace('T', ' ').slice(0, 19) + '+00';
}

export async function getAvailableInstruments() {
  const instruments = await fetchAvailableInstruments();
  return instruments;
}

export async function listStudents() {
  return await fetchStudents();
}

export async function rentInstrument(student_id, instrument_id) {
  const currentTime = getCurrentTimeFormatted();
  await rentInstrumentTransaction(student_id, instrument_id, currentTime);
}

export async function terminateRental(student_id, instrument_id) {
  const currentTime = getCurrentTimeFormatted();
  await terminateRentalTransaction(student_id, instrument_id, currentTime);
}

export async function getAllRentals() {
  return await fetchAllOngoingRentals();
}
