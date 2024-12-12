const API_URL = 'http://localhost:8888/api/rentals';

const instrumentEmojis = {
    1: "🎹", 
    2: "🎸", 
    3: "🎻", 
    4: "🥁", 
    5: "🪈", 
    6: "🎷", 
    7: "🎺", 
    8: "🎻", 
    9: "🎵", 
    10: "🎸"  
};

async function fetchInstruments() {
    const instrumentsContainer = document.getElementById('instruments-container');
    instrumentsContainer.innerHTML = '<p>Loading...</p>';

    try {
        const response = await fetch(`${API_URL}/list`);
        const data = await response.json();

        if (data.length === 0) {
            instrumentsContainer.innerHTML = '<p>No instruments available.</p>';
        } else {
            instrumentsContainer.innerHTML = data.map(instrument => `
                <div class="instrument-card" data-id="${instrument.instrument_id}">
                    <div class="instrument-emoji">${instrumentEmojis[instrument.instrument_type] || "🎵"}</div>
                    <div class="instrument-details">
                        <h3>${instrument.brand}</h3>
                        <p>ID: ${instrument.instrument_id}</p>
                        <p>Price: ${instrument.fee} kr/month</p>
                    </div>
                </div>
            `).join('');

            document.querySelectorAll('.instrument-card').forEach(card => {
                card.addEventListener('click', () => {
                    document.getElementById('instrument-id').value = card.dataset.id;
                });
            });
        }
    } catch (error) {
        instrumentsContainer.innerHTML = '<p>Error fetching instruments.</p>';
    }
}

async function fetchStudents() {
    const studentDropdown = document.getElementById('student-id');
    studentDropdown.innerHTML = '<option>Loading...</option>';

    try {
        const response = await fetch(`${API_URL}/liststudents`);
        const data = await response.json();

        studentDropdown.innerHTML = data.map(student => `
            <option value="${student.person_id}">${student.name}</option>
        `).join('');
    } catch (error) {
        studentDropdown.innerHTML = '<option>Error loading students</option>';
    }
}

async function fetchRentals() {
    const rentalList = document.getElementById('rental-list');
    rentalList.innerHTML = '<p>Loading rentals...</p>';

    try {
        const response = await fetch(`${API_URL}/listrentals`);
        const data = await response.json();

        if (data.length === 0) {
            rentalList.innerHTML = '<p>No active rentals.</p>';
        } else {
            rentalList.innerHTML = `
                <ul class="rental-list">
                    ${data.map(rental => `
                        <li class="rental-item" data-person-id="${rental.person_id}" data-instrument-id="${rental.instrument_id}">
                            <span>Student: ${rental.person_id}, Instrument: ${rental.instrument_id}</span>
                            <button class="terminate-btn">❌</button>
                        </li>
                    `).join('')}
                </ul>
            `;

            document.querySelectorAll('.terminate-btn').forEach(button => {
                button.addEventListener('click', async () => {
                    const listItem = button.closest('.rental-item');
                    const personId = listItem.dataset.personId;
                    const instrumentId = listItem.dataset.instrumentId;
                    await terminateRental(personId, instrumentId);
                    fetchRentals();
                });
            });
        }
    } catch (error) {
        rentalList.innerHTML = '<p>Error fetching rentals.</p>';
    }
}

async function terminateRental(studentId, instrumentId) {
    try {
        const response = await fetch(`${API_URL}/terminate`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ studentId, instrumentId })
        });
        const result = await response.json();
        console.log(result.message || result.error);
    } catch (error) {
        console.error('Error terminating rental.', error);
    }
}

document.getElementById('rent-form').addEventListener('submit', async (event) => {
    event.preventDefault();
    const studentId = document.getElementById('student-id').value;
    const instrumentId = document.getElementById('instrument-id').value;
    const rentMessage = document.getElementById('rent-message');

    console.log(studentId, instrumentId)

    try {
        const response = await fetch(`${API_URL}/rent`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ studentId, instrumentId })
        });
        const result = await response.json();
        rentMessage.textContent = result.message || result.error;
        fetchInstruments();
        fetchRentals();
    } catch (error) {
        rentMessage.textContent = 'Error renting instrument.';
    }
});

fetchInstruments();
fetchStudents();
fetchRentals();
