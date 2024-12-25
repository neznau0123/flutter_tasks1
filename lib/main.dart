import 'package:flutter/material.dart';
import 'package:myapp1/car_tasks/carscatalog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Catalog',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CarsCatalogPage(),
    );
  }
}
