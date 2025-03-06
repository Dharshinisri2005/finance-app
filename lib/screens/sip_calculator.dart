import 'package:flutter/material.dart';
import 'dart:math'; // ✅ Import math for pow function

class SIPCalculatorScreen extends StatefulWidget {
  @override
  _SIPCalculatorScreenState createState() => _SIPCalculatorScreenState();
}

class _SIPCalculatorScreenState extends State<SIPCalculatorScreen> {
  double amount = 0.0, rate = 0.0, duration = 0.0;
  double futureValue = 0.0;

  void calculateSIP() {
    double monthlyRate = rate / 100 / 12;
    futureValue = amount * ((pow(1 + monthlyRate, duration) - 1) / monthlyRate) * (1 + monthlyRate);
    
    setState(() {}); // Refresh UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SIP Calculator")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Monthly Investment Amount"),
              keyboardType: TextInputType.number,
              onChanged: (value) => amount = double.tryParse(value) ?? 0.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Expected Annual Return Rate (%)"),
              keyboardType: TextInputType.number,
              onChanged: (value) => rate = double.tryParse(value) ?? 0.0,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Investment Duration (Months)"),
              keyboardType: TextInputType.number,
              onChanged: (value) => duration = double.tryParse(value) ?? 0.0,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateSIP,
              child: Text("Calculate"),
            ),
            SizedBox(height: 20),
            Text(
              "Future Value: ₹${futureValue.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
