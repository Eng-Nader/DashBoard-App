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
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          height: 60,
          width: 60,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),
        const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 3.14159,
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
