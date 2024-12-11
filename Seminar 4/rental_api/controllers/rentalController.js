import {
    getAvailableInstruments,
    rentInstrument,
    terminateRental,
} from '../services/rentalService.js';

import { model } from '../model.js';

export async function listInstruments(req, res) {
    try {
        console.log('Listing shit');
        const { type } = req.query; // Query parameter: ?type=guitar
        console.log('Listing shit', type);
        const instruments = await getAvailableInstruments(type);
        res.status(200).json(instruments);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}

export async function rentInstrumentHandler(req, res) {
    const { studentId, instrumentId } = req.body;
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
        await terminateRental(studentId, instrumentId);
        res.status(200).json({ message: 'Rental terminated successfully.' });
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}
