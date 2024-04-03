import 'package:flutter/material.dart';
import 'package:restaurant/features/authentication/controllerOnboarding/onboardingcontroller.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/devices/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtility.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnboardingController.instance.skip();
        },
        child: Text('Skip',
        style: Theme.of(context).textTheme.titleLarge,
        ),
      )
      );
  }
}