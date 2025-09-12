import 'package:dashboarda_app/core/function/build_border.dart';
import 'package:dashboarda_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(
          hintText,
          style: AppStyle.styleRegular16.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffFAFAFA),
          ),
        ),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }
}
