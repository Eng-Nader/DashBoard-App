import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/widget/active_darwar_item.dart';
import 'package:dashboarda_app/widget/inactive_darawar_item.dart';
import 'package:flutter/material.dart';

class DarwarItem extends StatelessWidget {
  const DarwarItem(
      {super.key, required this.darwarItemModel, required this.isActive});
  final DarwarItemModel darwarItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveDarwarItem(darwarItemModel: darwarItemModel),
      secondChild: InActiveDarwarItem(darwarItemModel: darwarItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 350),
    );
    //todo add animation to Active drawer item
    //  isActive
    //     ? ActiveDarwarItem(
    //         darwarItemModel: darwarItemModel,
    //       )
    //     : InActiveDarwarItem(
    //         darwarItemModel: darwarItemModel,
    //       );
  }
}
