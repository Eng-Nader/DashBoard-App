import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/transation_header.dart';
import 'package:dashboarda_app/widget/transation_history_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransationHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransationHistoryView(),
      ],
    );
  }
}
