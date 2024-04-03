import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:restaurant/features/authentication/screens/signup/widget/verify_email.dart';
import 'package:restaurant/utils/constants/colors.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/constants/text_strings.dart';
import 'package:restaurant/utils/helpers/helper_functions.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.createAccountSubTile,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: TSizes.spaceBtwInputFields,
                        ),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNumber,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwInputFields,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: TTexts.confirmPassword,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: true,
                            onChanged: (val) {},
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '${TTexts.iAgreeTo} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: '${TTexts.privacyPolicy} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color:
                                          isDark ? Colors.white : Colors.black,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          isDark ? Colors.white : Colors.black,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) => StatefulBuilder(
                                        builder: (context, setState) =>
                                            AlertDialog(
                                          backgroundColor: Colors.white,
                                          contentPadding: EdgeInsets.zero,
                                          content: SingleChildScrollView(
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    TSizes.sm),
                                                child: Container(
                                                  width: 350,
                                                  //height: 280,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(height: 20),
                                                          Text(
                                                            TTexts.policyText,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Positioned(
                                                        top: -20,
                                                        right: -20,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop(); // Close the dialog when the button is pressed
                                                          },
                                                          child: const ClipOval(
                                                            child: Material(
                                                              color:
                                                                  Colors.green,
                                                              shape:
                                                                  CircleBorder(),
                                                              child: SizedBox(
                                                                width: 45,
                                                                height: 45,
                                                                child: Icon(
                                                                  Icons.close,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                              ),
                              TextSpan(
                                text: '${TTexts.and} ',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: '${TTexts.termOfUse} ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                      color:
                                          isDark ? Colors.white : Colors.black,
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          isDark ? Colors.white : Colors.black,
                                    ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) => StatefulBuilder(
                                        builder: (context, setState) =>
                                            AlertDialog(
                                          backgroundColor: Colors.white,
                                          contentPadding: EdgeInsets.zero,
                                          content: SingleChildScrollView(
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    TSizes.sm),
                                                child: Container(
                                                  width: 350,
                                                  //height: 280,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(height: 20),
                                                          Text(
                                                            TTexts.policyText,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Positioned(
                                                        top: -20,
                                                        right: -20,
                                                        child: InkWell(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop(); // Close the dialog when the button is pressed
                                                          },
                                                          child: const ClipOval(
                                                            child: Material(
                                                              color:
                                                                  Colors.green,
                                                              shape:
                                                                  CircleBorder(),
                                                              child: SizedBox(
                                                                width: 45,
                                                                height: 45,
                                                                child: Icon(
                                                                  Icons.close,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() =>const VerifyEmailScreen());
                            },
                            child: const Text(TTexts.createAccount))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
