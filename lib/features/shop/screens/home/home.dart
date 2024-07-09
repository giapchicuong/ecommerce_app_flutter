import 'package:ecommerce_app_flutter/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce_app_flutter/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce_app_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce_app_flutter/features/shop/screens/home/widgets/home_slider.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Heading
                      SectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),

                      // Categories
                      HomeCategories()
                    ],
                  )
                ],
              ),
            ),
            //   Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  SectionHeading(
                    title: 'Popular Products',
                    padding: 0,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  //   Popular Products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
