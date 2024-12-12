import express from 'express';
import {
    listInstruments,
    rentInstrumentHandler,
    terminateRentalHandler,
    getAllRentalsHandler,
    listStudentsHandler
} from '../controllers/rentalController.js';

const router = express.Router();

// List instruments
router.get('/list', listInstruments);

// List students
router.get('/liststudents', listStudentsHandler);

// Rent instrument
router.post('/rent', rentInstrumentHandler);

// Terminate rental
router.post('/terminate', terminateRentalHandler);

// Get all rentals
router.get('/listrentals', getAllRentalsHandler)

export default router;
