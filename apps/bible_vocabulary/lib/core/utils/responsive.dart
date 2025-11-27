import 'dart:math';
import 'package:flutter/material.dart';

enum DeviceType { phone, tablet }

class Responsive {
  static const double phoneMaxWidth = 600;

  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < phoneMaxWidth ? DeviceType.phone : DeviceType.tablet;
  }

  static bool isPhone(BuildContext context) =>
      getDeviceType(context) == DeviceType.phone;

  static bool isTablet(BuildContext context) =>
      getDeviceType(context) == DeviceType.tablet;

  static double cardWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (isPhone(context)) {
      return width - 32; // 화면 가득 채우기
    }
    return min(500.0, width * 0.6);
  }

  static double cardHeight(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    if (isPhone(context)) {
      return height * 0.38; // 2/3로 줄임
    }
    return min(400.0, height * 0.4);
  }

  static double screenPadding(BuildContext context) =>
      isTablet(context) ? 32.0 : 20.0;
}
