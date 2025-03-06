import 'package:flutter/material.dart';
import 'dart:math';

class EMICalculatorScreen extends StatefulWidget {
  @override
  _EMICalculatorScreenState createState() => _EMICalculatorScreenState();
}

class _EMICalculatorScreenState extends State<EMICalculatorScreen> {
  final principalController = TextEditingController();
  final rateController = TextEditingController();
  final durationController = TextEditingController();
  double emi = 0.0;

  void calculateEMI() {
    double principal = double.tryParse(principalController.text) ?? 0.0;
    double rate = (double.tryParse(rateController.text) ?? 0.0) / 100 / 12;
    int duration = int.tryParse(durationController.text) ?? 0;
    setState(() {
      emi = (principal * rate * pow(1 + rate, duration)) / (pow(1 + rate, duration) - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EMI Calculator")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: principalController, decoration: InputDecoration(labelText: "Loan Amount")),
            TextField(controller: rateController, decoration: InputDecoration(labelText: "Annual Interest Rate")),
            TextField(controller: durationController, decoration: InputDecoration(labelText: "Months")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: calculateEMI, child: Text("Calculate")),
            SizedBox(height: 20),
            Text("EMI: \$${emi.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
