import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveDarwarItem extends StatelessWidget {
  const ActiveDarwarItem({
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
        style: AppStyle.stylebold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
