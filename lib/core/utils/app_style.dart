import 'package:dashboarda_app/core/function/get_responsever_font_size.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(context) => TextStyle(
        fontSize: getResponseveText(16, context),
        fontWeight: FontWeight.w400,
        color: const Color(0xff064060),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleMedium16(context) => TextStyle(
        fontSize: getResponseveText(16, context),
        fontWeight: FontWeight.w500,
        color: const Color(0xff064060),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleMedium20(context) => TextStyle(
        fontSize: getResponseveText(20, context),
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontFamily: 'Montserrat',
      );

  static TextStyle styleSemibold16(context) => TextStyle(
        fontSize: getResponseveText(16, context),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064060),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleSemibold20(context) => TextStyle(
        fontSize: getResponseveText(20, context),
        fontWeight: FontWeight.w600,
        color: const Color(0xff064060),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleRegulard12(context) => TextStyle(
        fontSize: getResponseveText(12, context),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleRegulard14(context) => TextStyle(
        fontSize: getResponseveText(14, context),
        fontWeight: FontWeight.w400,
        color: const Color(0xffAAAAAA),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleSemibold24(context) => TextStyle(
        fontSize: getResponseveText(24, context),
        fontWeight: FontWeight.w600,
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
      );

  static TextStyle styleSemibold18(context) => TextStyle(
        fontSize: getResponseveText(18, context),
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: 'Montserrat',
      );

  static TextStyle stylebold16(context) => TextStyle(
        fontSize: getResponseveText(16, context),
        fontWeight: FontWeight.w700,
        color: const Color(0xff4EB7F2),
        fontFamily: 'Montserrat',
      );
}
