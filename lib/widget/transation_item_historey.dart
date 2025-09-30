import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/models/tansation_history_model.dart';
import 'package:flutter/material.dart';

class TransationItemHistorey extends StatelessWidget {
  const TransationItemHistorey(
      {super.key,
      required this.transationHistoryModel,
      required this.isActive});
  final TransationHistoryModel transationHistoryModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transationHistoryModel.title,
          style: AppStyle.styleSemibold16(context),
        ),
        subtitle: Text(
          transationHistoryModel.subTitle,
          style: AppStyle.styleRegular16(context),
        ),
        trailing: Text(
          transationHistoryModel.traling,
          style: AppStyle.styleSemibold20(context).copyWith(
              color:
                  isActive ? const Color(0xffF3735E) : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
