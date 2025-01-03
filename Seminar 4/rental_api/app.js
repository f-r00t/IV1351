import express from 'express';
import bodyParser from 'body-parser';
import cors from 'cors';
import rentalRoutes from './routes/rentalRoutes.js';

const app = express();
const PORT = process.env.PORT || 8888;

app.use(cors());
app.use(bodyParser.json());

// Routes
app.use('/api/rentals', rentalRoutes);

// Start Server
app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
