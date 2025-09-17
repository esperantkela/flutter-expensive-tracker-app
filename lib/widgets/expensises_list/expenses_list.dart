import 'package:expensive_tracker/models/expense.dart';
import 'package:expensive_tracker/widgets/expensises_list/expenses_item.dart';
import 'package:flutter/widgets.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expensises, required this.onRemoveExpense});

  final List<Expense> expensises;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensises.length,
      itemBuilder: (ctx, index) {
        return Dismissible(
          key: ValueKey(expensises[index]),
          child: ExpensesItem(expensises[index]),
          onDismissed: (direction) {
            onRemoveExpense(expensises[index]);
          },
        );
      },
    ); 
  }
}
