import 'package:flutter/material.dart';
import 'car.dart';
import 'CarDetailPage.dart';

class CarsCatalogPage extends StatelessWidget {
  final List<Car> cars = [
    Car(name: "Nissan GTR R34", maxSpeedKm: 380, mileageKm: 85000),
    Car(name: "Chevrolet Impala", maxSpeedKm: 215, mileageKm: 70000),
    Car(name: "Ford Mustang 1969", maxSpeedKm: 206, mileageKm: 60000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cars Catalog'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          final car = cars[index];
          return ListTile(
            title: Text(car.name),
            subtitle: Text("Max Speed: ${car.maxSpeedKm} km/h"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(car: car),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
