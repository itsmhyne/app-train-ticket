// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class RoundedbuttonWidget extends StatelessWidget {
  RoundedbuttonWidget({
    super.key,
    required this.padHor,
    required this.padVer,
    required this.widget,
    this.color,
  });

  double padHor;
  double padVer;
  Widget widget;
  Color? color;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: padHor, vertical: padVer),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color ?? const Color(0xffFFAB67),
        ),
        child: widget);
  }
}
