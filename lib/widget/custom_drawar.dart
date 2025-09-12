import 'package:dashboarda_app/models/darwar_item_model.dart';
import 'package:dashboarda_app/models/transation_model.dart';
import 'package:dashboarda_app/utils/app_images.dart';
import 'package:dashboarda_app/widget/custom_user_info.dart';
import 'package:dashboarda_app/widget/darwar_item_view.dart';
import 'package:dashboarda_app/widget/inactive_darawar_item.dart';
import 'package:flutter/material.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomUserInfo(
              listTileModel: ListTileModel(
                AppImage.imagesMoonLightDark,
                'demo@gmail.com',
                'Lekan Okeowo',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DarwarItemView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDarwarItem(
                  darwarItemModel: DarwarItemModel(
                      image: AppImage.imagesSetting, title: 'Setting system'),
                ),
                InActiveDarwarItem(
                  darwarItemModel: DarwarItemModel(
                      image: AppImage.imagesLogout, title: 'Logout account'),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
