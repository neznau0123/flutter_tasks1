import 'package:flutter/material.dart';
import 'car.dart';

class CarDetailPage extends StatefulWidget {
  final Car car;

  const CarDetailPage({super.key, required this.car});

  @override
  _CarDetailPageState createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  bool showInMiles = false; // Флаг для переключения единиц

  @override
  Widget build(BuildContext context) {
    final car = widget.car;

    return Scaffold(
      appBar: AppBar(
        title: Text(car.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: ${car.name}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "Max Speed: ${showInMiles ? '${car.maxSpeedMiles.toStringAsFixed(2)} mph' : '${car.maxSpeedKm.toStringAsFixed(2)} km/h'}",
            ),
            const SizedBox(height: 8),
            Text(
              "Mileage: ${showInMiles ? '${car.mileageMiles.toStringAsFixed(2)} miles' : '${car.mileageKm.toStringAsFixed(2)} km'}",
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showInMiles = !showInMiles;
                });
              },
              child: Text(showInMiles ? "Show in KM" : "Show in Miles"),
            ),
          ],
        ),
      ),
    );
  }
}
