import 'package:flutter/material.dart';

class ExpensesCard extends StatelessWidget {
  ExpensesCard({super.key, required this.description, required this.amount});
  String description;
  double amount;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: 
        Padding(padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(description, style:  TextStyle(fontWeight: .bold)),
            Text(amount.toString()),
          ],
          mainAxisAlignment: .spaceBetween,
        ),
      ),
    );
  }
}