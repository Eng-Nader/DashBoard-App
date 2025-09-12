import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/transation_item_view.dart';
import 'package:flutter/material.dart';

class LatesTransactionSection extends StatelessWidget {
  const LatesTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyle.styleMedium16,
        ),
        SizedBox(
          height: 12,
        ),
        TransationItemView(),
      ],
    );
  }
}
