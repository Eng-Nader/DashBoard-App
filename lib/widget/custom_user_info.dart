import 'package:dashboarda_app/models/list_tile_model.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
    required this.listTileModel,
  });
  final ListTileModel listTileModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              listTileModel.title,
              style: AppStyle.styleSemibold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              listTileModel.subTitle,
              style: AppStyle.styleRegulard12(context),
            ),
          ),
          leading: SvgPicture.asset(
            listTileModel.image,
          ),
        ),
      ),
    );
  }
}
