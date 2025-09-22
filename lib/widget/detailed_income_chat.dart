import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChat extends StatefulWidget {
  const DetailedIncomeChat({super.key});

  @override
  State<DetailedIncomeChat> createState() => _DetailedIncomeChat();
}

class _DetailedIncomeChat extends State<DetailedIncomeChat> {
  List<Color> colorList = [
    const Color(0xff208CC8),
    const Color(0xff4EB7F2),
    const Color(0xff064061),
    const Color(0xffE2DECD),
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
            touchCallback: (p0, touchResponse) {
              currentIndex =
                  touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            },
          ),
          sectionsSpace: 0,
          sections: [
            ...List.generate(
              colorList.length,
              (index) {
                return PieChartSectionData(
                  color: colorList[index],
                  showTitle: false,
                  radius: currentIndex == index ? 60 : 50,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
