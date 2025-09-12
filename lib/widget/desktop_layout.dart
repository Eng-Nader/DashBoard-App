import 'package:dashboarda_app/widget/all_expenses_item_list_view.dart';
import 'package:dashboarda_app/widget/custom_back_ground_container.dart';
import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:dashboarda_app/widget/custom_expnses.dart';
import 'package:dashboarda_app/widget/quick_invoice.dart';
import 'package:flutter/material.dart';

class DesptopLayout extends StatelessWidget {
  const DesptopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Expanded(
            child: CustomDrawar(),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                CustomExpnses(),
                QuickInvoice(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
