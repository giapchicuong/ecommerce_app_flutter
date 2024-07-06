import 'package:ecommerce_app_flutter/features/authentication/screens/signup/widgets/signup_conditions_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../verify_email.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        // Firstname and Lastname
        Row(
          children: [
            // Firstname
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.user,
                  ),
                  labelText: TTexts.firstName,
                ),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            //   Lastname
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.user,
                  ),
                  labelText: TTexts.lastName,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //   Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.user_edit,
            ),
            labelText: TTexts.username,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //   Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.direct,
            ),
            labelText: TTexts.email,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //   PhoneNumber
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.call,
            ),
            labelText: TTexts.phoneNo,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),

        //   Password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Iconsax.password_check,
            ),
            suffix: Icon(
              Iconsax.eye_slash,
            ),
            labelText: TTexts.password,
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        // Temp & Condition Checkbox
        const TermAndConditionCheckbox(),
        const SizedBox(height: TSizes.spaceBtwSections),

        // Sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),
        //
      ],
    ));
  }
}
