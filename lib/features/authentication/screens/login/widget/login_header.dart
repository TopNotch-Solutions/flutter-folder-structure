
import 'package:flutter/material.dart';
import 'package:restaurant/utils/constants/image_strings.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Image(
            height: 150,
            image: AssetImage(TImages.logo,
          ),
          ),
        ),
        Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: TSizes.sm,),
        Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}