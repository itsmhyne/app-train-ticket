import 'package:flutter/material.dart';

// --basic
const Color primaryColor = Color(0xff585871);
const Color secondaryColor = Color(0xff656CEE);
const Color orangeColor = Color(0xffFBA657);
const Color fontColorPrimary = Color(0xff333E63);
const Color fontColorSecondary = Color(0xff9695A8);
// --gradient
const LinearGradient whiteLinear = LinearGradient(
  colors: [Color(0xffffffff), Color(0xffffffff)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
const LinearGradient secondaryLinear = LinearGradient(
  colors: [secondaryColor, Color(0xffacb0ff)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const LinearGradient orangeLinear = LinearGradient(
  colors: [orangeColor, Color(0xffffffff)],
  begin: Alignment.bottomLeft,
  end: Alignment.topRight,
);
const RadialGradient secondaryRadial = RadialGradient(
  colors: [secondaryColor, Color(0xffacb0ff)],
  center: Alignment.center,
  radius: 0.5,
);
const RadialGradient orangeRadial = RadialGradient(
  colors: [orangeColor, Color(0xffffffff)],
  center: Alignment.center,
  radius: 0.5,
);
const SweepGradient primarySweep = SweepGradient(
  colors: [primaryColor, secondaryColor, orangeColor, fontColorPrimary],
  center: Alignment.center,
  startAngle: 0.0,
  endAngle: 3.14,
);
