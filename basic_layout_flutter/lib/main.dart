// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Layout - Banana Info';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tugas 1 | Haidar Aly // 2241720258'),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Column: All Text Content
              Expanded(
                flex: 1, // 1/3 of the screen for the text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Title Section
                    const Text(
                      'Banana Smoothie',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 8.0),

                    // Description Section
                    const Text(
                      'A banana smoothie is a refreshing and creamy drink made by blending ripe bananas with milk, yogurt, or other ingredients. '
                      'It is packed with nutrients like potassium, vitamin C, and fiber, making it a delicious and healthy choice for breakfast or a snack.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16.0, color: Colors.black87),
                    ),
                    const SizedBox(height: 16.0),

                    // Ratings Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.yellow[600]),
                        Icon(Icons.star, color: Colors.yellow[600]),
                        Icon(Icons.star, color: Colors.yellow[600]),
                        Icon(Icons.star, color: Colors.yellow[600]),
                        Icon(Icons.star_half, color: Colors.yellow[600]),
                        SizedBox(width: 8.0),
                        const Text('232 Reviews', style: TextStyle(fontSize: 16.0)),
                      ],
                    ),
                    const SizedBox(height: 16.0),

                    // Info Section (Prep Time, Cook Time, Feeds)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        InfoTile(icon: Icons.kitchen, label: 'PREP:', value: '10 min'),
                        InfoTile(icon: Icons.timer, label: 'COOK:', value: '0 min'),
                        InfoTile(icon: Icons.restaurant, label: 'SERVES:', value: '2-3'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),

              // Right Column: Image
              Expanded(
                flex: 2, // 2/3 of the screen for the image
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    'images/banana.jpg',
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// InfoTile Widget to display each info section (Prep, Cook, Serves)
class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({super.key, required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.orange),
        SizedBox(height: 4.0),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        Text(value, style: TextStyle(color: Colors.black54)),
      ],
    );
  }
}
