import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expenses  extends StatefulWidget{
  const Expenses({super.key});
  @override
  State<Expenses> createState() => _ExpensesState();
  
}

class _ExpensesState extends State<Expenses>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Expense Tracker'), foregroundColor: Colors.white, backgroundColor: Colors.blueAccent, actions: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.add))
      ],),
      body: Column(
        children: const [
          Text('The chart'),
          Text('Expenses List...'),
        ],
      ),
    );
  }
}