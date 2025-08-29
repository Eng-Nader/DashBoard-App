import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:flutter/material.dart';

class DesptopLayout extends StatelessWidget {
  const DesptopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawar(),
        ),
      ],
    );
  }
}
