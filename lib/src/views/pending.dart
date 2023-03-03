/*import 'package:flutter/material.dart';

class ConfirmBooking extends StatefulWidget {
  final String departureCity;
  final String arrivalCity;
  final String departureDate;
  const ConfirmBooking(
      {super.key,
      required this.departureCity,
      required this.arrivalCity,
      required this.departureDate});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Departure City: ${widget.departureCity}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Arrival City: ${widget.arrivalCity}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Departure Date: ${widget.departureDate}',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
*/