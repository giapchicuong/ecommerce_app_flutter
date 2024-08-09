import 'package:ecommerce_app_flutter/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app_flutter/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app_flutter/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app_flutter/utils/constants/colors.dart';
import 'package:ecommerce_app_flutter/utils/constants/image_strings.dart';
import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:ecommerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppbar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScroll) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // Search bar
                      const SizedBox(
                        height: TSizes.defaultSpace,
                      ),
                      const SearchContainer(
                        text: 'Search in store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),

                      // Featured brands
                      const SizedBox(height: TSizes.spaceBtwSections),
                      SectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                      //Rouded Container
                      TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            //   Icon
                            CircularImage(
                              isNetworkImage: false,
                              image: TImages.clothIcon,
                              backgroundColor: Colors.transparent,
                              overlayColor: THelperFunctions.isDarkMode(context)
                                  ? TColors.white
                                  : TColors.black,
                            ),
                            const SizedBox(
                              width: TSizes.spaceBtwItems / 2,
                            )

                            //Text
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(),
        ));
  }
}
