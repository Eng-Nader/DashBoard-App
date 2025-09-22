import 'package:dashboarda_app/utils/size_config.dart';
import 'package:dashboarda_app/widget/detailed_income_chat.dart';
import 'package:dashboarda_app/widget/income_chart_item.dart';
import 'package:dashboarda_app/widget/income_chat_details.dart';
import 'package:flutter/material.dart';

class IncomeChartBody extends StatelessWidget {
  const IncomeChartBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width > SizeConfig.desktop && width < 1800
        ? const Expanded(
            child: DetailedIncomeChat(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IncomeChartItem(),
              ),
              Expanded(
                child: IncomeChatDetails(),
              ),
            ],
          );
  }
}
