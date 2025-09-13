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
          title: Text(
            listTileModel.title,
            style: AppStyle.styleSemibold16,
          ),
          subtitle: Text(
            listTileModel.subTitle,
            style: AppStyle.styleRegulard12,
          ),
          leading: SvgPicture.asset(
            listTileModel.image,
          ),
        ),
      ),
    );
  }
}
