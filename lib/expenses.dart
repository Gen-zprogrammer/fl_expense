import 'package:expenses/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expenses/models/expense.dart';
// import 'package:google_fonts/google_fonts.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Ramen',
        amount: 14.99,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Diesel War',
        amount: 199.99,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'Coffee Shop',
        amount: 12.10,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Laptop',
        amount: 799.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'BPJS',
        amount: 9.90,
        date: DateTime.now(),
        category: Category.health),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("The Chart"),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
