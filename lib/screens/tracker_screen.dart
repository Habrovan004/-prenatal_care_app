import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrackerScreen extends StatefulWidget {
  @override
  _TrackerScreenState createState() => _TrackerScreenState();
}

class _TrackerScreenState extends State<TrackerScreen> {
  DateTime? _pregnancyStartDate;
  int _currentWeek = 0;

  void _pickDate() async {
    DateTime today = DateTime.now();
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: today.subtract(Duration(days: 280)), // up to 40 weeks before
      lastDate: today,
    );
    if (picked != null) {
      setState(() {
        _pregnancyStartDate = picked;
        _currentWeek = ((today.difference(picked).inDays) / 7).floor();
        if (_currentWeek < 0) _currentWeek = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prenatal Tracker"),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Track Your Pregnancy",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _pickDate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                _pregnancyStartDate == null
                    ? "Select Pregnancy Start Date"
                    : "Start Date: ${DateFormat('yyyy-MM-dd').format(_pregnancyStartDate!)}",
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 32),
            _pregnancyStartDate == null
                ? Text(
                    "No data yet",
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  )
                : Column(
                    children: [
                      Text(
                        "Current Week: $_currentWeek",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Your baby is developing week by week!",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}