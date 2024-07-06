import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = TSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
    this.padding,
    this.margin,
  });

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding, margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
