import 'package:dashboarda_app/widget/admin_payment.dart';
import 'package:dashboarda_app/widget/income_char.dart';
import 'package:dashboarda_app/widget/quick_invoice_and_expenses.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 20,
          ),
          AdminPaymnet(),
          SizedBox(
            height: 20,
          ),
          IncomeChart(),
        ],
      ),
    );
  }
}
