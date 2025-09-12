import 'package:dashboarda_app/models/expenses_model.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/expenses_item_header.dart';
import 'package:flutter/material.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.expensesModel,
  });

  final ExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: .8,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffFAFAFA),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesItemHeader(
                image: expensesModel.image,
              ),
              const SizedBox(
                height: 34,
              ),
              Text(
                expensesModel.title,
                style: AppStyle.styleSemibold16,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                expensesModel.data,
                style: AppStyle.styleRegulard14,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                expensesModel.price,
                style: AppStyle.styleSemibold24,
              )
            ],
          ),
        ));
  }
}