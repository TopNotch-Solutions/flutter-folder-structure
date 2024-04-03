import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant/common/styles/spacing_styles.dart';
import 'package:restaurant/features/authentication/screens/login/widget/login_form.dart';
import 'package:restaurant/features/authentication/screens/login/widget/login_header.dart';
import 'package:restaurant/utils/constants/sizes.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
    return  const SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TLoginHeader(),
              SizedBox(height: TSizes.md,),
              TLoginForm(),
            ],
          ),
        ),
      ),
    ));
  }
}


