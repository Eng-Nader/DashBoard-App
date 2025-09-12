import 'package:flutter/material.dart';

class TitleTextFild extends StatelessWidget {
  const TitleTextFild({super.key});

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

  OutlineInputBorder buildBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
    );
  }
}
