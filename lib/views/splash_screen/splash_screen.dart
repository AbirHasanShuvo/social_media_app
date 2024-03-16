import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/common_widgets/common_widgets.dart';
import 'package:social_media_app/consts/colors.dart';
import 'package:social_media_app/consts/images.dart';
import 'package:social_media_app/consts/string.dart';
import 'package:social_media_app/views/home_screen/home_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.to(() => const HomeScreen());
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
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          makeText(
              text: appName,
              size: 25.0,
              fontweight: FontWeight.bold,
              fontFamily: GoogleFonts.lato().fontFamily,
              color: whiteColor),
          15.heightBox,
          Image.asset(logoIcon),
          15.heightBox,
          makeText(
              text: developedBy,
              size: 19.0,
              fontFamily: GoogleFonts.galdeano().fontFamily,
              color: whiteColor,
              fontweight: FontWeight.bold),

        ],
      ),
    ));
  }
}
