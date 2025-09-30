import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDarwarItem extends StatelessWidget {
  const InActiveDarwarItem({
    super.key,
    required this.darwarItemModel,
  });

  final DarwarItemModel darwarItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        darwarItemModel.image,
      ),
      title: Text(
        darwarItemModel.title,
        style: AppStyle.styleRegular16(context),
      ),
    );
  }
}