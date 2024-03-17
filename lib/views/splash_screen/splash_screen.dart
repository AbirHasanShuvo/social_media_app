import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/common_widgets/common_widgets.dart';
import 'package:social_media_app/consts/colors.dart';
import 'package:social_media_app/consts/images.dart';
import 'package:social_media_app/consts/string.dart';
import 'package:social_media_app/views/auth/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            logoIcon,
          ),
          10.heightBox,
          const Divider(
            height: 5,
          ),
          makeText(
              text: appName,
              size: 22.0,
              fontweight: FontWeight.bold,
              fontFamily: GoogleFonts.scopeOne().fontFamily,
              color: blackColor,
             ),
          10.heightBox,
         Row(children: [
           makeText(
             text: developedBy,
             size: 16.0,
             fontFamily: GoogleFonts.notoSansSymbols().fontFamily,
             color: blackColor,
           ),
           makeText(
             text: abir,
             size: 14.0,
             fontFamily: GoogleFonts.notoSansSymbols().fontFamily,
             color: blackColor,
             fontweight: FontWeight.bold
           ),
         ],)
        ],
      ).box.padding(const EdgeInsets.symmetric(horizontal: 12)).make(),
    ));
  }
}
