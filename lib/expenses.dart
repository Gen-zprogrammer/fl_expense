import 'package:expenses/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expenses/models/expense.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: 'Carviar',
        amount: 14.99,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Travel Singapore',
        amount: 199.99,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'Bioskop',
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
          Row(
            children: [
              Text("The chart Expense", style: GoogleFonts.poppins(backgroundColor: Colors.blueAccent),),
              const SizedBox(
              width: 20.0,
              ),
              IconButton(
              onPressed: () {},
              icon: const Icon(
              Icons.add,
              size: 24.0,
              ),
              ),
            ],
          ),
          Expanded(
            child: ExpensesList(expensesList: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
