import 'package:flutter/material.dart';

class BudgetScreen extends StatefulWidget {
  @override
  _BudgetScreenState createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  final incomeController = TextEditingController();
  final expenseController = TextEditingController();
  double balance = 0.0;

  void calculateBalance() {
    double income = double.tryParse(incomeController.text) ?? 0.0;
    double expenses = double.tryParse(expenseController.text) ?? 0.0;
    setState(() {
      balance = income - expenses;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Budget Planner")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: incomeController, decoration: InputDecoration(labelText: "Income")),
            TextField(controller: expenseController, decoration: InputDecoration(labelText: "Expenses")),
            SizedBox(height: 20),
            ElevatedButton(onPressed: calculateBalance, child: Text("Calculate")),
            SizedBox(height: 20),
            Text("Balance: \$${balance.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
