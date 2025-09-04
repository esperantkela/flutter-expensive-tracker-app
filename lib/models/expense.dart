import 'package:uuid/uuid.dart';

enum Category {
  food,
  leisure,
  travel,
  work,
  others,
}

const uuid = Uuid();
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id =  Uuid().v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category ;
}