double getResponseveText(double fontSize) {
  double scaleFactor = getScaleFactor();

  double responseveText = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responseveText.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispacther = PlatformDispatcher.instance;
  var pyscialWidth = dispacther.views.first.physicalSize.width;
  var devicePixelRatio = dispacther.views.first.devicePixelRatio;
  var width = pyscialWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
