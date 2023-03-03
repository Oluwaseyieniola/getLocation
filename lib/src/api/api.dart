import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

Future<List<dynamic>> getavaialbleFlights() async {
  final response = await https.get(Uri.parse('http://localhost:<5500>'));
  if (response.statusCode == 200) {
    // The response body is a JSON array of flight objects
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load flights');
  }
}

Future<dynamic> bookFlight(
    String customerName, String email, String flightNumber) async {
  final response = await https.post(
    Uri.parse('http://localhost:<5500>'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'customerName': customerName,
      'email': email,
      'flightNumber': flightNumber,
    }),
  );
  if (response.statusCode == 200) {
    // The response body is a JSON object representing the new booking
    return json.decode(response.body);
  } else {
    throw Exception('Failed to book flight');
  }
}

Future<List<dynamic>> getBookingHistory() async {
  final response = await https.get(Uri.parse('http://localhost:<5500>'));
  if (response.statusCode == 200) {
    // The response body is a JSON array of booking objects
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load booking history');
  }
}
