

import 'package:dashboarda_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyle.styleSemibold20,
        ),
        Card(
          elevation: .8,
          child: Container(
            height: 48,
            width: 134,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Monthly',
                  style: AppStyle.styleMedium16,
                ),
                Icon(
                  Icons.arrow_downward,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
