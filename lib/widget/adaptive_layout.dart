import 'package:dashboarda_app/utils/size_config.dart';
import 'package:dashboarda_app/widget/mobile_layout.dart';
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
        if (constrain.maxWidth > SizeConfig.desktop) {
          return dektopLayout(context);
        } else if (constrain.maxWidth > SizeConfig.tablet) {
          return tabletlayout(context);
        } else {
          return moibleLayout(context);
        }
      },
    );
  }
}
