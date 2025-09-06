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
    return Row(
      children: expensesList.asMap().entries.map((e){ 
         int index = e.key ; 
         ExpensesModel  item = e.value ; 
         if (index == 1 ){ 
          return Expanded(
            child: Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(expensesModel: item),
            ),
          );
         } else { 
          return Expanded(child: AllExpensesItem(expensesModel: item)); 
         }
      }).toList()
         
    );
  }
}
