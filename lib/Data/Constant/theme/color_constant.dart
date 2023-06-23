import 'package:flutter/material.dart';
import 'package:templete/Data/Functions/color.dart';

/// App Colors Class - Resource class for storing app level color constants
class AppColors {
  static const Color backgroundColor = Color.fromARGB(255, 243, 243, 243);
  static Color? primaryColor = HexColor.fromHex('#76180e');
  static const Color greenColor = Color(0xFF33AB07);
  static const Color blueColor = Color(0xFF3199C9);

  //todo:black color
  static const Color blackColor1 = Color(0xFF000000);
  static const Color blackColor2 = Color(0xFF30292F);
  static const Color blackColor3 = Color(0xFF191919);
  static const Color darkBackgroundColor = Color(0xFF2C2C2C);

  static const Color redColor = Color(0xFFC10707);
  static const Color yellowColor = Colors.yellowAccent;

  //todo:grey color
  static const Color greyColor1 = Color(0xFFC9C9C9);
  static Color greyColor2 = HexColor.fromHex('A3AED0');
  static const Color greyColor3 = Color(0xff949494);
  static const Color greyColor4 = Color(0xff929096);
  static const Color greyColor5 = Color(0xFF8C8C8C);
  static const Color lightGreyColor = Color(0xFFCCCCCC);
  static const Color darkGreyColor = Color(0xFF6D6D6D);

  //todo:white Color
  static const Color whiteColor1 = Color(0xFFFFFFFF);
  static const Color whiteColor2 = Color(0xFFFEFEFE);
  static const Color whiteColor3 = Color(0xFFF8F0FB);
  static const Color whiteColor4 = Color(0xFFDCF0E8);
}
