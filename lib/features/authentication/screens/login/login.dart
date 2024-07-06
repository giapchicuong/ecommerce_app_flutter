import 'package:ecommerce_app_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_app_flutter/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title & Sub title
              const LoginHeader(),

              // Form
              const LoginForm(),

              //   Divider
              FormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //   Footter
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
