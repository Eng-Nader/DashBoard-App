import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/utils/app_style.dart';
import 'package:dashboarda_app/widget/custom_user_info.dart';
import 'package:dashboarda_app/widget/darwar_item.dart';
import 'package:dashboarda_app/widget/darwar_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          CustomUserInfo(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            image: AppImage.imagesMoonLightDark,
          ),
          SizedBox(
            height: 8,
          ),
          DarwarItemView(),
        ],
      ),
    );
  }
}
