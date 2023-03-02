const express = require('express');
const app = express();
const bodyParser = require('body-parser');

app.use(bodyParser.json());

let flights = [
  {
    flightNumber: 'ABC123',
    departureCity: 'Abuja',
    arrivalCity: 'Lagos',
    departureTime: '2023-03-01T08:00:00.000Z',
    arrivalTime: '2023-03-01T11:00:00.000Z',
    price: 50000
  },
  {
    flightNumber: 'DEF456',
    departureCity: '',
    arrivalCity: 'New York',
    departureTime: '2023-03-02T08:00:00.000Z',
    arrivalTime: '2023-03-02T11:00:00.000Z',
    price: 55000
  }
];

let bookings = [];

// Retrieve available flights
app.get('/flights', (req, res) => {
  res.json(flights);
});

// Book a flight
app.post('/bookings', (req, res) => {
  const { customerName, email, flightNumber } = req.body;
  const flight = flights.find(f => f.flightNumber === flightNumber);

  if (!flight) {
    return res.status(400).send('Invalid flight number');
  }

  const booking = {
    bookingNumber: bookings.length + 1,
    customerName,
    email,
    flightNumber,
    departureCity: flight.departureCity,
    arrivalCity: flight.arrivalCity,
    departureTime: flight.departureTime,
    arrivalTime: flight.arrivalTime,
    price: flight.price
  };

  bookings.push(booking);
  res.json(booking);
});

// Retrieve booking history
app.get('/bookings', (req, res) => {
  res.json(bookings);
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});