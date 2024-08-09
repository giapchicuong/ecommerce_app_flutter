import 'package:ecommerce_app_flutter/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app_flutter/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce_app_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app_flutter/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce_app_flutter/common/widgets/images/circular_image.dart';
import 'package:ecommerce_app_flutter/common/widgets/layout/grid_layout.dart';
import 'package:ecommerce_app_flutter/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce_app_flutter/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app_flutter/utils/constants/colors.dart';
import 'package:ecommerce_app_flutter/utils/constants/enums.dart';
import 'package:ecommerce_app_flutter/utils/constants/image_strings.dart';
import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:ecommerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/texts/brand_title_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                          padding: 0,
                          onPressed: () {},
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                        //Rouded Container
                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Flexible(
                                  child: TRoundedContainer(
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
                                          overlayColor:
                                              THelperFunctions.isDarkMode(
                                                      context)
                                                  ? TColors.white
                                                  : TColors.black,
                                        ),
                                        const SizedBox(
                                            width: TSizes.spaceBtwItems / 2),

                                        //Text
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const BrandTitleWithVerifiedIcon(
                                                title: 'Nike',
                                                brandTextSize: TextSizes.large,
                                              ),
                                              Text(
                                                '256 products with ',
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  //   Tabs
                  bottom: const TTabBar(tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electroníc')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ]),
                ),
              ];
            },
            body: const TabBarView(
              children: [],
            ),
          )),
    );
  }
}
