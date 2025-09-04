import 'package:dashboarda_app/widget/desktop_layout.dart';
import 'package:dashboarda_app/widget/adaptive_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        moibleLayout: (context) => const SizedBox(),
        tabletlayout: (context) => const SizedBox(),
        dektopLayout: (context) => const DesptopLayout(),
      ),
    );
  }
}
