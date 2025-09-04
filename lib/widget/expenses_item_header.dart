import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xffFAFAFA),
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        Transform.rotate(
          angle: 3.14159,
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
