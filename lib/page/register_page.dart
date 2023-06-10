import 'package:flutter/material.dart';
import 'package:mhytickettrain/bloc/export.dart';
import 'package:mhytickettrain/page/home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/img/bg3.png",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              // child: Padding(
              //   padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: Image.asset(
                      "assets/img/roket.png",
                      width: 300,
                      height: 300,
                    ),
                  ),
                  Text(
                    "Daftar Sekarang Juga",
                    style: h2semibold(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 245, 245, 245),
                              blurRadius: 5.0,
                              offset: Offset(0, 1)),
                        ]),
                    child: TextField(
                      style: largetextmedium(),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: mediumtextmedium(color: Colors.grey[500])),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 245, 245, 245),
                              blurRadius: 5.0,
                              offset: Offset(0, 1)),
                        ]),
                    child: TextField(
                      obscureText: true,
                      style: largetextmedium(),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: mediumtextmedium(color: Colors.grey[500])),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[500],
                      ),
                      child: Text(
                        "Login",
                        style: largetextsemibold(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Sudah Punya Akun?",
                    style: mediumtextmedium(color: Colors.blue[500]),
                  ),
                ],
              ),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
