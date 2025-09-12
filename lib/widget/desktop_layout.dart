import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:dashboarda_app/widget/custom_expnses.dart';
import 'package:dashboarda_app/widget/quick_invoice.dart';
import 'package:dashboarda_app/widget/quick_invoice_and_expenses.dart';
import 'package:flutter/material.dart';

class DesptopLayout extends StatelessWidget {
  const DesptopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawar(),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
      ],
    );
  }
}
