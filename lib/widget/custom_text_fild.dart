
import 'package:dashboarda_app/core/function/build_border.dart';
import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
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
