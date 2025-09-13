import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/transation_header.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransationHeader(),
        Text(
          '13 April 2022',
          style: AppStyle.styleMedium16,
        ),
      ],
    );
  }
}
