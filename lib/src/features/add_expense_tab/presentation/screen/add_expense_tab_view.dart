import 'package:expense_tracer_app/src/core/extension/context_extension.dart';
import 'package:expense_tracer_app/src/features/add_expense_tab/presentation/layouts/expense_mobile_layout.dart';
import 'package:expense_tracer_app/src/features/add_expense_tab/presentation/layouts/expense_tablet_layout.dart';
import 'package:flutter/material.dart';

class AddExpenseTabView extends StatelessWidget {
  const AddExpenseTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.secondaryColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return ExpenseTabletLayout();
          } else {
            return ExpenseMobileLayout();
          }
        },
      ),
    );
  }
}
