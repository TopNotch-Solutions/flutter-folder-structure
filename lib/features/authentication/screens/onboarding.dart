import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:restaurant/features/authentication/controllerOnboarding/onboardingcontroller.dart';
import 'package:restaurant/features/authentication/screens/widgets/onboarding_button.dart';
import 'package:restaurant/features/authentication/screens/widgets/onboarding_dots.dart';
import 'package:restaurant/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:restaurant/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:restaurant/utils/constants/image_strings.dart';
import 'package:restaurant/utils/constants/text_strings.dart';
import 'package:restaurant/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(OnboardingController());
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //horizontal scrollable pages
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(image: TImages.onboardingImage1, title: TTexts.onBoardingTitle1,subTitle: TTexts.onBoardingSubTitle1,),
                OnBoardingPage(image: TImages.onboardingImage2, title: TTexts.onBoardingTitle2,subTitle: TTexts.onBoardingSubTitle2,),
                OnBoardingPage(image: TImages.onboardingImage3, title: TTexts.onBoardingTitle3,subTitle: TTexts.onBoardingSubTitle3,)
              ],
            ),
            //skip button
            const OnboardingSkip(),
          
            //dot navigator
            OnboardingNavigationDots(isDark: isDark),
            
            //circular next button
            const OnboardingButton()
          ],
        ),
      ),
    );
  }
}

