import 'package:dashboarda_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xff4EB7F2),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffFAFAFA),
                child: SvgPicture.asset(
                  AppImage.imagesBalance,
                ),
              ),
              Transform.rotate(
                angle: 3.14159,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
