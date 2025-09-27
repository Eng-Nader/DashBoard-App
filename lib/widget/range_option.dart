import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyle.styleSemibold20,
        ),
        Card(
          elevation: .8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                  width: 1,
                  color: Color(0xffF1F1F1),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  Text(
                  'Monthly',
                  style: AppStyle.styleMedium16,
                ),
                Transform.rotate(
                  angle: 4.71239,
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Color(0xff064061),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
