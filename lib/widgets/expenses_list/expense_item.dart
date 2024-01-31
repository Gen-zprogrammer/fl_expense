import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expenseitem, {super.key});

  final Expense expenseitem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Card(
        child: Column(
          children: [
            Text(expenseitem.title),
            const SizedBox(
              height: 4.0,
            ),
            Row(
            children: [
              Text('\$${expenseitem.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
              children: [
               Icon(categoryIcons[expenseitem.category]),
               const SizedBox(
               width: 8.0,
               ),
                Text(expenseitem.formatDate),
              ],
              ),
            ],
            ),
          ],
        ),
      ),
    );
  }
}
