import 'package:dashboarda_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(
          title,
          style: AppStyle.styleSemibold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyle.styleRegulard12,
        ),
        leading: SvgPicture.asset(
          image,
        ),
      ),
    );
  }
}
