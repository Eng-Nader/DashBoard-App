import 'package:dashboarda_app/models/transation_model.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.transationModel});

  final ListTileModel transationModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .8,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(transationModel.image),
        title: Text(
          transationModel.title,
          style: AppStyle.styleSemibold16,
        ),
        subtitle: Text(
          transationModel.subTitle,
          style: AppStyle.styleRegulard12,
        ),
      ),
    );
  }
}
