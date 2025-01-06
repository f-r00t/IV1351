import {
    getAvailableInstruments,
    rentInstrument,
    terminateRental,
    getAllRentals,
    listStudents
} from '../services/rentalService.js';

import { model } from '../model.js';

export async function listInstruments(req, res) {
    try {
        const { type } = req.query;
        const instruments = await getAvailableInstruments();
        res.status(200).json(instruments);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}

export async function listStudentsHandler(req, res) {
    try {
        const students = await listStudents();
        res.status(200).json(students);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}

export async function getAllRentalsHandler(req, res) {
    try {
        const instruments = await getAllRentals();
        res.status(200).json(instruments);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}

export async function rentInstrumentHandler(req, res) {
    const { studentId, instrumentId } = req.body;
    console.log(studentId, instrumentId)
    try {
        if (model.lockedInstruments.some(i => i === instrumentId)) {
            return false;
        }
        model.lockedInstruments.push(instrumentId);
        await rentInstrument(studentId, instrumentId);
        res.status(200).json({ message: 'Instrument rented successfully.' });
    } catch (err) {
        console.log(err);
        res.status(500).json({ error: err.message });

    }
    const index = model.lockedInstruments.indexOf(instrumentId);
    if (index !== -1) {
        model.lockedInstruments.splice(index, 1);
    }
}

export async function terminateRentalHandler(req, res) {
    try {
        const { studentId, instrumentId } = req.body;
        console.log(studentId, instrumentId);
        await terminateRental(studentId, instrumentId);
        res.status(200).json({ message: 'Rental terminated successfully.' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}
