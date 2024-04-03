import 'package:flutter/material.dart';
import 'package:restaurant/features/authentication/controllerOnboarding/onboardingcontroller.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/devices/device_utility.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtility.getBottomNavigationHeight(),
      child: ElevatedButton(
        onPressed: (){
          OnboardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(shape: const CircleBorder()), child: const Icon(Icons.arrow_right_alt),
      ),
    );
  }
}





