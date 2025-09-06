import 'package:dashboarda_app/models/expenses_model.dart';
import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/active_expenses_item.dart';
import 'package:dashboarda_app/widget/expenses_item_header.dart';
import 'package:dashboarda_app/widget/inactive_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.expensesModel,
    required this.isActive,
  });
  final ExpensesModel expensesModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(expensesModel: expensesModel)
        : InActiveAllExpensesItem(expensesModel: expensesModel);
  }
}


