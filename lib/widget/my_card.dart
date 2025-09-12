import 'package:dashboarda_app/core/utils/app_images.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'My card',
          style: AppStyle.styleSemibold20,
        ),
        const SizedBox(
          height: 24,
        ),
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(AppImage.imageBackGraoudPaymet),
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
