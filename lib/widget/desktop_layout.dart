import 'package:dashboarda_app/widget/admin_payment.dart';
import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:dashboarda_app/widget/income_char.dart';
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
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            children: [
              AdminPaymnet(),
              SizedBox(
                height: 20,
              ),
              IncomeChart(),
            ],
          ),
        ),
      ],
    );
  }
}
