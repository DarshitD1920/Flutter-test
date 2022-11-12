import 'package:flutter/material.dart';

const apiKey = "Gt4frJ8T8GWsHSQ5ADFqT2GDRc7dBX";

// Color

const primaryColor = Colors.blue;
const grayColor = Colors.grey;
const blackColor = Colors.black;
const whiteColor = Colors.white;
final lightBlackColor = Colors.black.withOpacity(0.8);

// TextStyles

TextStyle fontStyleMedium({
  double fontsize = 14,
  Color color = blackColor,
}) {
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontWeight: FontWeight.w400,
  );
}

TextStyle fontStyleSemiBold({
  double fontsize = 14,
  Color color = blackColor,
}) {
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontWeight: FontWeight.w500,
  );
}

TextStyle fontStyleBold({
  double fontsize = 14,
  Color color = blackColor,
}) {
  return TextStyle(
    fontSize: fontsize,
    color: color,
    fontWeight: FontWeight.w600,
  );
}
