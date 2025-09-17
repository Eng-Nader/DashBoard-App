import 'package:dashboarda_app/widget/custom_drawar.dart';
import 'package:dashboarda_app/widget/desktop_layout.dart';
import 'package:dashboarda_app/widget/adaptive_layout.dart';
import 'package:dashboarda_app/widget/mobile_layout.dart';
import 'package:dashboarda_app/widget/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawar() : null,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        moibleLayout: (context) => const MobileLayout(),
        tabletlayout: (context) => const TabletLayout(),
        dektopLayout: (context) => const DesptopLayout(),
      ),
    );
  }
}
