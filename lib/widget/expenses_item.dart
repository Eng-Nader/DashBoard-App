import 'package:dashboarda_app/models/expenses_model.dart';
import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/expenses_item_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expensesModel});
  final ExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              ExpensesItemHeader(
                image: expensesModel.image,
              ),
              Text(
                expensesModel.title,
                style: AppStyle.styleSemibold16,
              ),
              Text(
                expensesModel.data,
                style: AppStyle.styleRegulard14,
              ),
              Text(
                expensesModel.price,
                style: AppStyle.styleSemibold24,
              ),
            ],
          ),
        )
      ],
    );
  }
}
