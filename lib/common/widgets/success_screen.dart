import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/common/styles/spacing_styles.dart';
import 'package:restaurant/features/authentication/screens/login/login.dart';
import 'package:restaurant/features/authentication/screens/signup/widget/verify_email.dart';
import 'package:restaurant/utils/constants/image_strings.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/constants/text_strings.dart';
import 'package:restaurant/utils/helpers/helper_functions.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:  TSpacingStyle.paddingWithAppBarHeight ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: const AssetImage(
                      TImages.onboardingImage2,
                    ),
                    height: THelperFunctions.screenHeight() * 0.3,
                    width: THelperFunctions.screenWidth() * 0.9),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Text(
                  TTexts.sucessTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                
                Text(
                  TTexts.sucessTitle2,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(() => const LoginScreen());
                    },
                    child: const Text(
                      TTexts.confirmEmailed,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}