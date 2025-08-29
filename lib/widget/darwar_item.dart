import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DarwarItem extends StatelessWidget {
  const DarwarItem(
      {super.key, required this.darwarItemModel, required this.isActive});
  final DarwarItemModel darwarItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        darwarItemModel.image,
      ),
      title: Text(
        darwarItemModel.title,
        style: isActive ? AppStyle.stylebold16 : AppStyle.styleRegular16,
      ),
    );
  }
}
