import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/models/tansation_history_model.dart';
import 'package:flutter/material.dart';

class TransationItem extends StatelessWidget {
  const TransationItem({super.key, required this.transationHistoryModel});
  final TransationHistoryModel transationHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          transationHistoryModel.title,
          style: AppStyle.styleSemibold16,
        ),
        subtitle: Text(
          transationHistoryModel.subTitle,
          style: AppStyle.styleRegular16,
        ),
        trailing: Text(
          transationHistoryModel.traling,
          style: AppStyle.styleSemibold20,
        ),
      ),
    );
  }
}
