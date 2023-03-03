class Flight {
  late final String airline;
  late final String flightNumber;
  late final String departureCity;
  late final String arrivalCity;
  late final String departureDate;
  late final String returnDate;
  late final String travellers;
  late final String price;
  late final String currency;
  late final String status;

  Flight(
      this.airline,
      this.arrivalCity,
      this.currency,
      this.departureCity,
      this.departureDate,
      this.flightNumber,
      this.price,
      this.returnDate,
      this.status,
      this.travellers);

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      json['airline'],
      json['arrivalCity'],
      json['currency'],
      json['departurecity'],
      json['departureDate'],
      json['flightNumber'],
      json['price'],
      json['returnDate'],
      json['status'],
      json['travellers'],
    );
  }
}
