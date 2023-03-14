import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';
import 'package:task/core/utils/widgets/default_text.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({Key? key,required this.color,required this.onPressed,this.title,this.child}) : super(key: key);

  Color color;
  String? title;
  Widget? child;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 7.h,
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.rSp),
        ),
        color: color,
        child: child ?? DefaultText(
          title: title!,
          style: Style.small,
          color: ColorsManager.white,
          fontSize: 24.rSp,
        ),
      ),
    );
  }
}
