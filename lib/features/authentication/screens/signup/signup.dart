import 'package:ecommerce_app_flutter/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce_app_flutter/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:ecommerce_app_flutter/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //   Title
              const SignupHeader(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //   Form
              const SignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              //   Divider
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //   Social Button
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
