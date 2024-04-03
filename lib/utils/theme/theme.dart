import 'package:flutter/material.dart';
import 'package:restaurant/utils/theme/custome_themes/appbar_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/bottom_sheet_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/checkbox_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/chip_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/outline_button_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/text_field_theme.dart';
import 'package:restaurant/utils/theme/custome_themes/text_theme.dart';
class TAppTheme{

  TAppTheme._();

  static ThemeData lightMode =ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    appBarTheme: TAppBarTheme.lighAppBarTheme,
    chipTheme: TChipTheme.lightChipThemeData,
    inputDecorationTheme: TInputDecoreationTheme.lightInputDecorationTheme
  );
  static ThemeData darkMode =ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    chipTheme: TChipTheme.darkChipThemeData,
    inputDecorationTheme: TInputDecoreationTheme.darkInputDecorationTheme
  );
}