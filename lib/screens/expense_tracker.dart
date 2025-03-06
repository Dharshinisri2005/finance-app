import 'package:flutter/material.dart';

class ExpenseTrackerScreen extends StatefulWidget {
  @override
  _ExpenseTrackerScreenState createState() => _ExpenseTrackerScreenState();
}

class _ExpenseTrackerScreenState extends State<ExpenseTrackerScreen> {
  final List<String> expenses = [];
  final expenseController = TextEditingController();

  void addExpense() {
    setState(() {
      expenses.add(expenseController.text);
      expenseController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expense Tracker")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(controller: expenseController, decoration: InputDecoration(labelText: "Enter Expense")),
          ),
          ElevatedButton(onPressed: addExpense, child: Text("Add Expense")),
          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) => ListTile(title: Text(expenses[index])),
            ),
          ),
        ],
      ),
    );
  }
}
