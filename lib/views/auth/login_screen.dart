import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_media_app/consts/images.dart';
import 'package:social_media_app/consts/string.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../common_widgets/common_widgets.dart';
import '../../consts/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(logoIcon),
            10.heightBox,
            const Divider(),
            10.heightBox,
            makeText(
                text: loginText,
                size: 25.0,
                fontweight: FontWeight.bold,
                fontFamily: GoogleFonts.scopeOne().fontFamily,
                color: blackColor),
            10.heightBox,
            makeText(
              text: 'Type email and password for login',
              fontFamily: GoogleFonts.notoSansSymbols().fontFamily,
              color: blackColor,
              size: 16.0
            ),

          ]).box.padding(const EdgeInsets.symmetric(horizontal: 12)).make()),
    );
  }
}
