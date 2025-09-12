import 'package:dashboarda_app/widget/custom_button.dart';
import 'package:dashboarda_app/widget/title_text_fild.dart';
import 'package:flutter/material.dart';

class QutikInvoiceForm extends StatelessWidget {
  const QutikInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFild(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFild(
                title: 'Customer Emaile',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFild(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFild(
                title: 'Item Mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        CustomButton(),
      ],
    );
  }
}
