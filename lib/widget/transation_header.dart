import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class TransationHeader extends StatelessWidget {
  const TransationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text(
          'Transaction History',
          style: AppStyle.styleSemibold20,
        ),
        Text(
          'See all',
          style: AppStyle.styleMedium16.copyWith(
            color: const Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
