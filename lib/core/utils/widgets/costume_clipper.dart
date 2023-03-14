import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/constants_manager.dart';

class CostumeClipper extends StatelessWidget {
  CostumeClipper({Key? key,required this.height,required this.color,this.child}) : super(key: key);
  double height;
  Color color;
  Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SinCosineWaveClipper(
          horizontalPosition: HorizontalPosition.right,
          verticalPosition: VerticalPosition.top),
      child: Container(
        height: height,
        padding:  EdgeInsets.all(20.rSp),
        color: color,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
