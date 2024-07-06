import 'package:ecommerce_app_flutter/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerce_app_flutter/features/authentication/screens/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems),
      child: Form(
          child: Column(
        children: [
          //   Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          //   Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
              labelText: TTexts.password,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields / 2),
          //   Remember Me & Forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //   Remember me
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(TTexts.rememberMe),
                ],
              ),

              //   Forget password
              TextButton(
                onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                child: const Text(TTexts.forgetPassword),
              )
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          //   Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const NavigationMenu()),
              child: const Text(TTexts.signIn),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),

          //   Create Accout Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: const Text(TTexts.createAccount),
            ),
          )
        ],
      )),
    );
  }
}
