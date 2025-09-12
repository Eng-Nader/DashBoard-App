import 'package:dashboarda_app/models/expenses_model.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/expenses_item_header.dart';
import 'package:flutter/material.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
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
            color: const Color(0xff4EB7F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpensesItemHeader(
                backGroundColor: Colors.white10,
                imageColor: Colors.white,
                image: expensesModel.image,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 34,
              ),
              Text(
                expensesModel.title,
                style: AppStyle.styleSemibold16.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                expensesModel.data,
                style: AppStyle.styleRegulard14.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(expensesModel.price,
                  style: AppStyle.styleSemibold24.copyWith(
                    color: Colors.white,
                  ))
            ],
          ),
        ));
  }
}
