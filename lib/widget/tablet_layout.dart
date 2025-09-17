import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:dashboarda_app/widget/quick_invoice_and_expenses.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        children: [
          Expanded(
            child: CustomDrawar(),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 3,
            child: AllExpensesAndQuickInvoiceSection(),
          ),
          SizedBox(
            width: 20,
          ) , 
      
        ],
      ),
    );
  }
}
