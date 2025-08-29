import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/expnses_header.dart';
import 'package:flutter/material.dart';

class CustomExpnses extends StatelessWidget {
  const CustomExpnses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          ExpensesHeader() , 
        ],
      ),
    );
  }
}