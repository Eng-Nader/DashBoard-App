
import 'package:dashboarda_app/view/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const DashBoardApp(),
  );

}

class DashBoardApp extends StatelessWidget {
  const DashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DashboardView(),
      ),
    );
  }
}
