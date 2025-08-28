import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.moibleLayout,
      required this.tabletlayout,
      required this.dektopLayout});
  final WidgetBuilder moibleLayout, tabletlayout, dektopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrain) {
        if (constrain.maxWidth < 600) {
          return moibleLayout(context);
        } else if (constrain.maxWidth < 900) {
          return tabletlayout(context);
        } else {
          return dektopLayout(context);
        }
      },
    );
  }
}
