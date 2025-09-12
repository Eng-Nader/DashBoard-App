import 'package:dashboarda_app/models/transation_model.dart';
import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/widget/custom_user_info.dart';
import 'package:dashboarda_app/widget/lates_transation_item.dart';
import 'package:dashboarda_app/widget/latest_transaction_section.dart';
import 'package:flutter/material.dart';

class TransationItemView extends StatelessWidget {
  const TransationItemView({super.key});

  final List<ListTileModel> transationList = const [
    ListTileModel(
      AppImage.imagesMoonlight,
      'Madraniadi20@gmail',
      'Madrani Andi',
    ),
    ListTileModel(
      AppImage.imagesMoondark,
      'Josh Nunito@gmail.com',
      'Josua Nunito',
    ),
    ListTileModel(
      AppImage.imagesMoonlight,
      'Madraniadi20@gmail',
      'Madrani Andi',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: transationList.length,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: CustomUserInfo(
              listTileModel: transationList[index],
            ),
          );
        },
      ),
    );
  }
}
