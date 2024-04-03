import 'package:flutter/material.dart';
import 'package:restaurant/features/authentication/screens/onboarding.dart';
import 'package:restaurant/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightMode,
      darkTheme: TAppTheme.darkMode,
      home: const OnboardingScreen(),
    );
  }
}