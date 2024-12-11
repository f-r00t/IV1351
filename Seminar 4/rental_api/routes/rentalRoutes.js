import express from 'express';
import {
    listInstruments,
    rentInstrumentHandler,
    terminateRentalHandler,
} from '../controllers/rentalController.js';

const router = express.Router();

// List instruments
router.get('/list', listInstruments);

// Rent instrument
router.post('/rent', rentInstrumentHandler);

// Terminate rental
router.post('/terminate', terminateRentalHandler);

export default router;
