import 'package:dashboarda_app/models/income_chart_model.dart';
import 'package:dashboarda_app/widget/income_chart_details_item.dart';
import 'package:dashboarda_app/widget/income_chart_item.dart';
import 'package:flutter/material.dart';

class IncomeChatDetails extends StatelessWidget {
  const IncomeChatDetails({super.key});
  static const incomechartList = [
    IncomeChartModel(
      Color(0xff208CC8),
      'Design service',
      '40%',
    ),
    IncomeChartModel(
      Color(0xff4EB7F2),
      'Design product',
      '25%',
    ),
    IncomeChartModel(
      Color(0xff064061),
      'Product royalti',
      '20%',
    ),
    IncomeChartModel(
      Color(0xffE2DECD),
      'Other',
      '22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          incomechartList.length,
          (index) {
            return IncomeChartDetailsItem(
              incomeChartModel: incomechartList[index],
            );
          },
        )
      ],
    );
  }
}
