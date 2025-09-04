import 'package:expensive_tracker/widgets/expensises_list/expenses_list.dart';
import 'package:expensive_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses  extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<Expenses> createState() => _ExpensesState();
  
}

class _ExpensesState extends State<Expenses>{
  final List<Expense> registeredExpenses = [
    Expense(title: 'Flutter Course', amount: 19.99, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amount: 15.69, date: DateTime.now(), category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Expense Tracker'), foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.add))
      ],),
      body: Column(
        children:  [
          Text('The chart'),
          Expanded(child: ExpensesList(expensises: registeredExpenses)),
        ],
      ),
    );
  }
}