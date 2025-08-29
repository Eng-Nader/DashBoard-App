import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/active_darwar_item.dart';
import 'package:dashboarda_app/widget/inactive_darawar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DarwarItem extends StatelessWidget {
  const DarwarItem(
      {super.key, required this.darwarItemModel, required this.isActive});
  final DarwarItemModel darwarItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDarwarItem(
            darwarItemModel: darwarItemModel,
          )
        : InActiveDarwarItem(
            darwarItemModel: darwarItemModel,
          );
  }
}



