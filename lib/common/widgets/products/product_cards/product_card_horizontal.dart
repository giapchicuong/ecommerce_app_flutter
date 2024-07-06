import 'package:ecommerce_app_flutter/common/styles/shadow_styles.dart';
import 'package:ecommerce_app_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app_flutter/common/widgets/images/rounded_image.dart';
import 'package:ecommerce_app_flutter/utils/constants/colors.dart';
import 'package:ecommerce_app_flutter/utils/constants/image_strings.dart';
import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:ecommerce_app_flutter/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          //   Thumbnail, Wishlist Button, Discount Tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                //   Thumbnail Image
                const TRoundedImage(
                  imageUrl: TImages.productImage1,
                  applyImageRadius: true,
                ),

                //   Sale Tag
                TRoundedContainer(
                  radius: TSizes.sm,
                  backgroundColor: TColors.secondary.withOpacity(0.8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.sm,
                    vertical: TSizes.xs,
                  ),
                )
              ],
            ),
          )
          //   Details
        ],
      ),
    );
  }
}
