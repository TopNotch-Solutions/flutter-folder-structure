import 'package:flutter/material.dart';

class TColors{

  TColors._();
  // BASIC APP COLORS
  static const Color primary =Colors.green;
  static const Color secondary =Color(0xFFFFE24B);
  static const Color accent =Color(0xFFb0c7ff);

  //text colors
  static const Color textPrimary =Color(0xFF333333);
  static const Color textSecondary =Color(0xFF6C757D);
  static const Color textWhite =Colors.white;

//background colors
  static const Color light =Color(0xFFF6F6F6);
  static const Color dark =Color(0xFF272727);
  static const Color primaryBackground =Color(0xFFF3F5FF);

//BACKGROUND container color
  static const Color lightContainer =Color(0xFFF6F6F6);
  static  Color darkContainer =TColors.white.withOpacity(0.1);

  //BUTTON COLOR
  static const Color buttonPrimary =Colors.green;
  static const Color buttonSecondary =Color(0xFF6C757D);
  static const Color buttonDisabled =Color(0xFFC4C4C4);

  //BORDER COLOR
  static const Color borderPrimary =Color(0xffd9d9d9d);
  static const Color borderSecondary =Color(0xffe6e6e6e);
  
  //ERROR AND VALIDATION COLORS
  static const Color error =Color(0xFFD32F2F);
  static const Color success=Color(0xFF388E3C);
  static const Color warning =Color(0xFFF57C00);
  static const Color info =Color(0xFF1976D2);
  //neutral color
  static const Color black =Color(0xFF232323);
  static const Color darkerGrey =Color(0xFF4F4F4F);
  static const Color darkGrey =Color(0xFF939393);
   static const Color grey =Color(0xFFE0E0E0);
  static const Color softGrey =Color(0xFFF4F4F4);
  static const Color lightGrey =Color(0xFFF9F9F9);
  static const Color white =Color(0xFFFFFFFF);
}