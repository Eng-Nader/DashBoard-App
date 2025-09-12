import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/dot_indectaor.dart';
import 'package:dashboarda_app/widget/my_card.dart';
import 'package:flutter/material.dart';

class PaymentProcess extends StatelessWidget {
  const PaymentProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyle.styleSemibold20,
        ),
        SizedBox(
          height: 24,
        ),
        MyCard(),
        SizedBox(
          height: 19,
        ),
        DotIndecator()
      ],
    );
  }
}
