import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';


final formatter = DateFormat.yMMMd();
const uuid = Uuid();

enum Category { food, travel, leisure, work, health, }

const categoryIcons = {
Category.food: Icons.lunch_dining,
Category.travel: Icons.flight_takeoff,
Category.leisure: Icons.movie_filter,
Category.work : Icons.laptop_mac,
Category.health: Icons.health_and_safety_outlined,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();


  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatDate {
    return formatter.format(date);
  }
}
