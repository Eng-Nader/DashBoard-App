import 'package:dashboarda_app/models/expenses_model.dart';
import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/widget/expenses_item.dart';
import 'package:dashboarda_app/widget/expnses_header.dart';
import 'package:flutter/material.dart';

class CustomExpnses extends StatelessWidget {
  const CustomExpnses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        children: [
          ExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItem(
            expensesModel: ExpensesModel(
              data: 'April 2022',
              image: AppImage.imagesIncome,
              price: r'$20,129',
              title: 'Income',
            ),
          ),
        ],
      ),
    );
  }
}
