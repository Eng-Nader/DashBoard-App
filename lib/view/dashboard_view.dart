import 'package:dashboarda_app/widget/desktop_layout.dart';
import 'package:dashboarda_app/widget/adaptive_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: AdaptiveLayout(
        moibleLayout: (context) => SizedBox(),
        tabletlayout: (context) => SizedBox(),
        dektopLayout: (context) => DesptopLayout(),
      ),
    );
  }
}
