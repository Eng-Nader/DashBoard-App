import 'package:dashboarda_app/widget/custom_back_ground_container.dart';
import 'package:dashboarda_app/widget/income_chart_item.dart';
import 'package:dashboarda_app/widget/range_option.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      paddingValue: 20,
      child: Column(
        children: [
          RangeOption(text: 'Income'),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: IncomeChartItem(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
