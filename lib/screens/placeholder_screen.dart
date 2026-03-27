import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  final String label;

  const PlaceholderScreen({required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(label), backgroundColor: Colors.pink),
      body: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
