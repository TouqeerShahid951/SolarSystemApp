import 'package:flutter/material.dart';

class PlanetDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final Color color;

  const PlanetDetailScreen({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(title, style: TextStyle(color: color)),
        iconTheme: IconThemeData(color: color),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: color,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  // Add more details here as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}