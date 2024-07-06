import 'package:ecommerce_app_flutter/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class TSpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}