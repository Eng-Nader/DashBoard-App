import 'dart:developer';
import 'dart:ui';

import 'package:dashboarda_app/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  static TextStyle styleRegular16 = TextStyle(
    fontSize: getResponseveText(16),
    fontWeight: FontWeight.w400,
    color: const Color(0xff064060),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleMedium16 = TextStyle(
    fontSize: getResponseveText(16),
    fontWeight: FontWeight.w500,
    color: const Color(0xff064060),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleMedium20 = TextStyle(
    fontSize: getResponseveText(20),
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemibold16 = TextStyle(
    fontSize: getResponseveText(16),
    fontWeight: FontWeight.w600,
    color: const Color(0xff064060),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemibold20 = TextStyle(
    fontSize: getResponseveText(20),
    fontWeight: FontWeight.w600,
    color: const Color(0xff064060),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleRegulard12 = TextStyle(
    fontSize: getResponseveText(12),
    fontWeight: FontWeight.w400,
    color: const Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleRegulard14 = TextStyle(
    fontSize: getResponseveText(14),
    fontWeight: FontWeight.w400,
    color: const Color(0xffAAAAAA),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemibold24 = TextStyle(
    fontSize: getResponseveText(24),
    fontWeight: FontWeight.w600,
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
  );
  static TextStyle styleSemibold18 = TextStyle(
    fontSize: getResponseveText(18),
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Montserrat',
  );
  static TextStyle stylebold16 = TextStyle(
    fontSize: getResponseveText(16),
    fontWeight: FontWeight.w700,
    color: const Color(0xff4EB7F2),
    fontFamily: 'Montserrat',
  );
}

