import 'package:dashboarda_app/core/utils/app_images.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImage.imageBackGraoudPaymet),
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Name card',
                  style: AppStyle.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle:   Text(
                  'Syah Bandi',
                  style: AppStyle.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(
                  AppImage.imageVector,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                '0918 8124 0042 8129',
                style: AppStyle.styleSemibold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '12/20 - 124',
                style: AppStyle.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
