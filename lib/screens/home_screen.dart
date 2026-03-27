import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Maternal Care Dashboard"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, H.A.G.A.I 👋",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
            SizedBox(height: 16),
            // Quick Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildQuickAction(
                    icon: Icons.pregnant_woman,
                    label: "Prenatal Tracker",
                    context: context,
                    route: '/tracker'),
                _buildQuickAction(
                    icon: Icons.chat,
                    label: "Consult Doctor",
                    context: context,
                    route: '/consult'),
                _buildQuickAction(
                    icon: Icons.health_and_safety,
                    label: "Health Tips",
                    context: context,
                    route: '/tips'),
              ],
            ),
            SizedBox(height: 32),
            Text(
              "Recent Updates",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(height: 16),
            // Placeholder for updates
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  "No recent updates",
                  style: TextStyle(color: Colors.pink[200], fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(
      {required IconData icon,
      required String label,
      required BuildContext context,
      required String route}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.pink[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36, color: Colors.pink),
            SizedBox(height: 8),
            Text(label,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.pink)),
          ],
        ),
      ),
    );
  }
}