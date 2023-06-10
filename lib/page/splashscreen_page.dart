import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mhytickettrain/page/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/img/roket.png',
      splashIconSize: 350,
      nextScreen: const OnboardingPage(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 2000,
      backgroundColor: Colors.white,
      centered: true,
      pageTransitionType: PageTransitionType.topToBottom,
    );
  }
}
