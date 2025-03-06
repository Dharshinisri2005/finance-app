import 'package:flutter/material.dart';
import 'budget_screen.dart';
import 'expense_tracker.dart';
import 'sip_calculator.dart';
import 'emi_calculator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome, Financial Queen! 👑"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"), // Elegant Women's Day background
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(20),
          children: [
            _buildMenuItem(context, "Budget", BudgetScreen(), Icons.account_balance_wallet),
            _buildMenuItem(context, "Expense Tracker", ExpenseTrackerScreen(), Icons.pie_chart),
            _buildMenuItem(context, "SIP Calculator", SIPCalculatorScreen(), Icons.trending_up),
            _buildMenuItem(context, "EMI Calculator", EMICalculatorScreen(), Icons.calculate),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, Widget screen, IconData icon) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 5,
        color: Colors.purple[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.purple),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple)),
          ],
        ),
      ),
    );
  }
}
