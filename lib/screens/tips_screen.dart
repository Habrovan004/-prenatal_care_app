import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  final List<Map<String, String>> tips = [
    {
      "title": "Nutrition",
      "content": "Eat a balanced diet with fruits, vegetables, and proteins."
    },
    {
      "title": "Hydration",
      "content": "Drink at least 8 glasses of water daily."
    },
    {
      "title": "Exercise",
      "content": "Light exercise like walking helps maintain health."
    },
    {
      "title": "Warning Signs",
      "content": "Seek medical help if you experience severe pain or bleeding."
    },
    {
      "title": "Rest",
      "content": "Ensure you get enough sleep and avoid stress."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Tips"),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: tips.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tips[index]["title"]!,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                  SizedBox(height: 8),
                  Text(
                    tips[index]["content"]!,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}