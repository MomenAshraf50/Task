import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    Key? key,
    required this.title,
    required this.style,
    this.align,
    this.color,
    this.fontWeight,
    this.fontSize,
  }) : super(key: key);
  final String title;
  final Style style;
  final TextAlign? align;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: getStyle(context)
          .copyWith(color: color?? ColorsManager.white, fontWeight: fontWeight, fontSize: fontSize),
    );
  }

  TextStyle getStyle(BuildContext context) {
    switch (style) {
      case Style.extraSmall:
        return Theme.of(context).textTheme.bodySmall!;
      case Style.small:
        return Theme.of(context).textTheme.displaySmall!;
      case Style.medium:
        return Theme.of(context).textTheme.displayMedium!;
      case Style.large:
        return Theme.of(context).textTheme.displayLarge!;
      case Style.headMedium:
        return Theme.of(context).textTheme.headlineMedium!;
      case Style.headLarge:
        return Theme.of(context).textTheme.headlineLarge!;
    }
  }
}
