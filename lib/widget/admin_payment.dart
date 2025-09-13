import 'package:dashboarda_app/widget/custom_back_ground_container.dart';
import 'package:dashboarda_app/widget/payment_process.dart';
import 'package:dashboarda_app/widget/transation_history.dart';
import 'package:flutter/material.dart';

class AdminPaymnet extends StatelessWidget {
  const AdminPaymnet({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      paddingValue: 20,
      child: Column(
        children: [
          PaymentProcess(),
          SizedBox(
            height: 10,
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
