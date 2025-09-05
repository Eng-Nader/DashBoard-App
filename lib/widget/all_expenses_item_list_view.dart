import 'package:dashboarda_app/models/expenses_model.dart';
import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/widget/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  final List<ExpensesModel> expensesList = const [
    ExpensesModel(
      data: 'April 2022',
      image: AppImage.imagesBalance,
      price: '\$20,129',
      title: 'Balance',
    ),
    ExpensesModel(
      data: 'April 2022',
      image: AppImage.imagesIncome,
      price: '\$20,129',
      title: 'Income',
    ),
    ExpensesModel(
      data: 'April 2022',
      image: AppImage.imagesExpencess,
      price: '\$20,129',
      title: 'Expenses',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: expensesList.length,
      itemBuilder: (context, index) {
        return AllExpensesItem(
          expensesModel: expensesList[index],
        );
      },
    );
  }
}
