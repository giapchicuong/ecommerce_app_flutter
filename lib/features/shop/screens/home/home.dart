import 'package:ecommerce_app_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapres/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapres/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Appbar
                  HomeAppbar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  SearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Column(
                    children: [
                      // Heading
                      SectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),

                      // Categories
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
