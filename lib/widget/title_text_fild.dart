import 'package:dashboarda_app/core/function/build_border.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:dashboarda_app/widget/custom_text_fild.dart';
import 'package:flutter/material.dart';

class TitleTextFild extends StatelessWidget {
  const TitleTextFild({super.key, required this.title, required this.hintText});
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.styleMedium16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        CustomTextFild(
          hintText: hintText,
        ),
      ],
    );
  }
}
