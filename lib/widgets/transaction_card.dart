import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final double amount;

  TransactionCard({required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(Icons.account_balance_wallet, color: Colors.purple),
        title: Text(title, style: Theme.of(context).textTheme.titleLarge),
        subtitle: Text("\$${amount.toStringAsFixed(2)}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.purpleAccent),
      ),
    );
  }
}
