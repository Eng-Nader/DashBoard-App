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
                image: AssetImage(AppImage.imageBackGraoudPaymet),
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      'Name card',
                      style: AppStyle.styleRegular16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: const Text(
                      'Syah Bandi',
                      style: AppStyle.styleMedium20,
                    ),
                    trailing: SvgPicture.asset(
                      AppImage.imageVector,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyle.styleSemibold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyle.styleRegular16.copyWith(
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
