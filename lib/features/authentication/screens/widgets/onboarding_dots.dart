import 'package:flutter/material.dart';
import 'package:restaurant/features/authentication/controllerOnboarding/onboardingcontroller.dart';
import 'package:restaurant/utils/constants/colors.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/devices/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingNavigationDots extends StatelessWidget {
  const OnboardingNavigationDots({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: TDeviceUtility.getBottomNavigationHeight(),
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(controller: controller.pageController, count: 3,onDotClicked: controller.dotNavigationClicked,
      effect: ExpandingDotsEffect(activeDotColor: isDark? TColors.light: TColors.black,dotHeight: 6),
      ),

      );
  }
}