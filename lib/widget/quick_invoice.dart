import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/custom_back_ground_container.dart';
import 'package:dashboarda_app/widget/latest_transaction_section.dart';
import 'package:dashboarda_app/widget/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      paddingValue: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatesTransactionSection(),
        ],
      ),
    );
  }
}
