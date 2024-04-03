import 'package:flutter/material.dart';

class TChipTheme{

  TChipTheme._();

  static ChipThemeData lightChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    selectedColor: Colors.green,
    checkmarkColor: Colors.white
  );
  static ChipThemeData darkChipThemeData = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.white),
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    selectedColor: Colors.green,
    checkmarkColor: Colors.white
  );
}