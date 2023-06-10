import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mhytickettrain/bloc/export.dart';
import 'package:mhytickettrain/config/textstyle.dart';
import 'package:mhytickettrain/page/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Absensi Harian Anda dengan Aplikasi",
          body:
              "Disini anda akan menemukan kemudahan dalam absensi di genggaman anda",
          image: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 75),
              width: 400,
              height: 400,
              child: Image.asset("assets/img/handphone.png"),
            ),
          ),
          decoration: PageDecoration(
              titleTextStyle: h1medium(),
              bodyTextStyle: mediumtextregular(),
              bodyPadding: const EdgeInsets.symmetric(horizontal: 30)),
        ),
        PageViewModel(
          title: "Permudah Absensi Karyawan Anda Disini",
          body:
              "Disini anda hanya tinggal klik untuk absesn, dan nikmati fitur lainnya yang tersedia",
          image: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 75),
              width: 400,
              height: 400,
              child: Image.asset("assets/img/checklist.png"),
            ),
          ),
          decoration: PageDecoration(
              titleTextStyle: h1medium(),
              bodyTextStyle: mediumtextregular(),
              bodyPadding: const EdgeInsets.symmetric(horizontal: 30)),
        )
      ],
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.blue[500],
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
      done: Text("Selesai", style: largetextmedium()),
      showSkipButton: false,
      showBackButton: false,
      showNextButton: true,
      skip: Text("Lewati", style: largetextmedium()),
      next: Text("Selanjutnya", style: largetextmedium()),
      onDone: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
    ));
  }
}
