import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.image,
    this.backGroundColor,
    this.imageColor, this.iconColor,
  });
  final String image;
  final Color? backGroundColor, imageColor , iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: backGroundColor ?? const Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn)),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 3.14159,
          child:  Icon(
            Icons.arrow_back_ios,
            color:  iconColor ?? Colors.black , 
          ),
        ),
      ],
    );
  }
}
