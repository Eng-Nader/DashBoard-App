import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyle.styleSemibold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(

            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
