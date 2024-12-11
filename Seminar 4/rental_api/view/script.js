const API_URL = 'http://localhost:8888/api/rentals';

// Fetch and display available instruments
document.getElementById('list-btn').addEventListener('click', async () => {
    const instrumentType = document.getElementById('instrument-type').value;
    const instrumentsContainer = document.getElementById('instruments-container');
    instrumentsContainer.innerHTML = '<p>Loading...</p>';

    try {
        const response = await fetch(`${API_URL}/list?type=${instrumentType}`);
        const data = await response.json();

        if (data.length === 0) {
            instrumentsContainer.innerHTML = '<p>No instruments available.</p>';
        } else {
            instrumentsContainer.innerHTML = data.map(instrument =>
                `<p>ID: ${instrument.instrument_id}, Brand: ${instrument.brand}, Price: ${instrument.fee} kr/month</p>`
            ).join('');
        }
    } catch (error) {
        instrumentsContainer.innerHTML = '<p>Error fetching instruments.</p>';
    }
});

// Handle renting an instrument
document.getElementById('rent-form').addEventListener('submit', async (event) => {
    event.preventDefault();
    const studentId = document.getElementById('student-id').value;
    const instrumentId = document.getElementById('instrument-id').value;
    const rentMessage = document.getElementById('rent-message');

    try {
        const response = await fetch(`${API_URL}/rent`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ studentId, instrumentId })
        });
        const result = await response.json();

        rentMessage.textContent = result.message || result.error;
    } catch (error) {
        rentMessage.textContent = 'Error renting instrument.';
    }
});

// Handle terminating a rental
document.getElementById('terminate-form').addEventListener('submit', async (event) => {
    event.preventDefault();
    const studentId = document.getElementById('terminate-student-id').value;
    const instrumentId = document.getElementById('terminate-instrument-id').value;
    const terminateMessage = document.getElementById('terminate-message');

    try {
        const response = await fetch(`${API_URL}/terminate`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ studentId, instrumentId })
        });
        const result = await response.json();

        terminateMessage.textContent = result.message || result.error;
    } catch (error) {
        terminateMessage.textContent = 'Error terminating rental.';
    }
});
