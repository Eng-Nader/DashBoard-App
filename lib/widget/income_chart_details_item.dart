import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/models/income_chart_model.dart';
import 'package:flutter/material.dart';

class IncomeChartDetailsItem extends StatelessWidget {
  const IncomeChartDetailsItem({super.key, required this.incomeChartModel});
  final IncomeChartModel incomeChartModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: incomeChartModel.color,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(
        incomeChartModel.title,
        style: AppStyle.styleRegular16,
      ),
      trailing: Text(
        incomeChartModel.present,
        style: AppStyle.styleMedium16,
      ),
    );
  }
}
