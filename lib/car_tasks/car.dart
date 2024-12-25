class Car {
  final String name;
  final double maxSpeedKm;
  final double mileageKm;

  Car({
    required this.name,
    this.maxSpeedKm = 200.0,
    this.mileageKm = 10000.0,
  });

  double get maxSpeedMiles => maxSpeedKm * 0.621371;

  double get mileageMiles => mileageKm * 0.621371;

  @override
  String toString() {
    return 'Car: $name, Max Speed: ${maxSpeedKm}km/h, Mileage: ${mileageKm}km';
  }
}
