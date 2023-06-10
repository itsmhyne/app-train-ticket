// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mhytickettrain/bloc/export.dart';

class ResponsivebuttonWidget extends StatelessWidget {
  ResponsivebuttonWidget(
      {super.key,
      required this.padHor,
      required this.padVer,
      required this.btnText,
      this.color,
      this.textColor});

  double padHor;
  double padVer;
  String btnText;
  Color? color;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padHor, vertical: padVer),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? const Color(0xffFFAB67),
      ),
      child: Text(
        btnText,
        style: largetextsemibold(color: textColor ?? Colors.white),
      ),
    );
  }
}
