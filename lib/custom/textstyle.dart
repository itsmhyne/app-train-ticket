import 'package:flutter/material.dart';
import 'package:slicing_mhyticket/custom/constant.dart';

TextStyle heading1({Color? color}) {
  return TextStyle(
      fontSize: 48.0,
      fontWeight: FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle heading2({Color? color}) {
  return TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle heading3({Color? color}) {
  return TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle heading4({Color? color}) {
  return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle heading5({Color? color}) {
  return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle heading6({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: 18.0,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle heading7({Color? color}) {
  return TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: color ?? fontColorPrimary);
}

TextStyle bodyXL({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: 18.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? fontColorPrimary);
}

TextStyle bodyL({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: 16.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? fontColorPrimary);
}

TextStyle bodyM({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: 14.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? fontColorPrimary);
}

TextStyle bodySM({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: 12.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? fontColorPrimary);
}

TextStyle bodyXS({Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontSize: 10.0,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? fontColorPrimary);
}
