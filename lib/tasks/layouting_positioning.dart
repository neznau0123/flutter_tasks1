import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kakoy-to HomePage"),
        actions: [
          Switch(value: false, onChanged: (value) {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                physics:
                    const NeverScrollableScrollPhysics(), // Отключение скролла GridView
                children: [
                  _buildGridTile(
                      Icons.smartphone, "Default Theme", Colors.teal),
                  _buildGridTile(Icons.apps, "Full Apps", Colors.deepPurple),
                  _buildGridTile(Icons.language, "Integration", Colors.green),
                  _buildGridTile(Icons.dashboard, "Dashboard", Colors.orange),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Themes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildListTile(Icons.folder, "File Manager",
                      "Theme 1 Screens", Colors.orange),
                  _buildListTile(Icons.fitness_center, "Exercise Tips",
                      "Theme 2 Screens", Colors.green),
                  _buildListTile(Icons.fastfood, "Food Recipe",
                      "Theme 3 Screens", Colors.blue),
                  _buildListTile(Icons.sports_gymnastics, "Gym",
                      "Theme 4 Screens", Colors.teal),
                  _buildListTile(Icons.account_balance_wallet, "e-wallet",
                      "Theme 5 Screens", Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridTile(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 36),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(
      IconData icon, String title, String subtitle, Color color) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.1),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.arrow_forward_ios, color: color),
      onTap: () {},
    );
  }
}
