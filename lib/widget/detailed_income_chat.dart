import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/models/income_chart_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChat extends StatefulWidget {
  const DetailedIncomeChat({super.key});

  @override
  State<DetailedIncomeChat> createState() => _DetailedIncomeChat();
}

class _DetailedIncomeChat extends State<DetailedIncomeChat> {
  List<IncomeChartModel> detailsIncomes = [
    const IncomeChartModel(
      Color(0xff208CC8),
      'Design service',
      40,
    ),
    const IncomeChartModel(
      Color(0xff4EB7F2),
      'Design product',
      25,
    ),
    const IncomeChartModel(
      Color(0xff064061),
      'Product royalti',
      20,
    ),
    const IncomeChartModel(
      Color(0xffE2DECD),
      'Other',
      22,
    ),
  ];

  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
              enabled: true,
              touchCallback: (touchEvent, touchResponse) {
                currentIndex =
                    touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
                setState(() {});
              }),
          sectionsSpace: 0,
          sections: [
            ...List.generate(
              detailsIncomes.length,
              (index) {
                return PieChartSectionData(
                  titleStyle: AppStyle.styleMedium16(context).copyWith(
                    fontWeight: FontWeight.bold,
                    color: currentIndex == index ? null : Colors.white,
                  ),
                  value: (detailsIncomes[index].present),
                  title: currentIndex == index
                      ? detailsIncomes[index].title
                      : detailsIncomes[index].present.toString(),
                  color: detailsIncomes[index].color,
                  showTitle: true,
                  radius: currentIndex == index ? 60 : 50,
                  titlePositionPercentageOffset:
                      currentIndex == index ? 1.3 : null,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
