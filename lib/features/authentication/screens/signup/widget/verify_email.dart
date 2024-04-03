import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/common/widgets/success_screen.dart';
import 'package:restaurant/features/authentication/screens/login/login.dart';
import 'package:restaurant/utils/constants/image_strings.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/constants/text_strings.dart';
import 'package:restaurant/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Get.off(() => const LoginScreen());
                },
                icon: Icon(
                  CupertinoIcons.clear,
                  color: isDark ? Colors.white : Colors.black,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: const AssetImage(
                      TImages.onboardingImage3,
                    ),
                    height: THelperFunctions.screenHeight() * 0.3,
                    width: THelperFunctions.screenWidth() * 0.9),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                Text(
                  TTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Text(
                  'pauluswilhelm85@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Text(
                  TTexts.confirmEmailSub,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const SuccessPage());
                    },
                    child: const Text(
                      TTexts.confirmEmailed,
                    ),
                  ),
                ),
                TextButton(onPressed: (){}, child: Text(TTexts.resendEmail,
                            style: TextStyle(
                              color: isDark ? Colors.white: Colors.black
                            ),
                            ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
