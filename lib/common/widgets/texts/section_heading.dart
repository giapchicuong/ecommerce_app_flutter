import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.onPressed,
    this.textColor,
    required this.title,
    this.buttonTitle = 'View all',
    this.showActionButton = true,
    this.padding = TSizes.defaultSpace,
  });
  final double? padding;
  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: padding!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              child: Text(buttonTitle),
            )
        ],
      ),
    );
  }
}
