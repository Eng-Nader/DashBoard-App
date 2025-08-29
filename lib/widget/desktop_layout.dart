import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:dashboarda_app/widget/custom_expnses.dart';
import 'package:flutter/material.dart';

class DesptopLayout extends StatelessWidget {
  const DesptopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  Expanded(
                    child: CustomExpnses(),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
