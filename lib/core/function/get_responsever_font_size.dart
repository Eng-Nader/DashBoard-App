import 'dart:ui';

import 'package:dashboarda_app/utils/size_config.dart';
import 'package:flutter/material.dart';

double getResponseveText(double fontSize , BuildContext context) {
  double scaleFactor = getScaleFactor(context);

  double responseveText = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responseveText.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  // var dispacther = PlatformDispatcher.instance;
  // var pyscialWidth = dispacther.views.first.physicalSize.width;
  // var devicePixelRatio = dispacther.views.first.devicePixelRatio;
  // var width = pyscialWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
