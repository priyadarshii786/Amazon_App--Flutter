import 'package:flutter/material.dart';

class CommonFunctions {
  static blankspace(double? height, double? width) {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    );
  }
}
