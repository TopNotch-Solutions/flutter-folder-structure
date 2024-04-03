import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:restaurant/features/authentication/screens/signup/widget/sign_up.dart';
import 'package:restaurant/utils/constants/sizes.dart';
import 'package:restaurant/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields,),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2,),
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: true, onChanged: (val){

                  }),
                   Text(TTexts.rememberMe, style: Theme.of(context).textTheme.labelLarge,
                  ),
                  
                ],
              ),
              TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword))
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections,),
          SizedBox(width : double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems,),
          SizedBox(width : double.infinity, child: ElevatedButton(onPressed: (){
            Get.to(() =>const SignUp());
          }, child: const Text(TTexts.createAccount))),
        ],
      ),
    );
  }
}