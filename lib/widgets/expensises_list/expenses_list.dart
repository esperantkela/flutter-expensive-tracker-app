import 'package:expensive_tracker/models/expense.dart';
import 'package:expensive_tracker/widgets/expensises_list/expenses_item.dart';
import 'package:flutter/widgets.dart';

class ExpensesList  extends StatelessWidget {
  const  ExpensesList({super.key, required this.expensises});

  final List<Expense>  expensises ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensises.length,
      itemBuilder: (ctx, index) {
        final expense = expensises[index];
        return ExpensesItem(expense);
      },
    );
    
  }
}