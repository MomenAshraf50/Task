import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';

class TextInput extends StatelessWidget {
  TextInput({Key? key,
    this.firstHint,
    required this.secondHint,
    this.firstWidget,
    this.padding,
    this.isPassword,
    this.keyboardType,
    required this.twoParts,
  })
      : super(key: key);

  String? firstHint;
  String secondHint;
  Widget? firstWidget;
  double? padding;
  bool? isPassword;
  TextInputType? keyboardType;
  bool twoParts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      child: Row(
        children: [
          if(twoParts)
          Expanded(
            flex: 1,
            child: Container(
              height: 7.h,
              padding: EdgeInsetsDirectional.only(start: padding ?? 10.rSp),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.grey, width: 0.5.w)),
              child: firstWidget ??
                  TextFormField(
                    keyboardType: keyboardType,
                    style: const TextStyle(color: ColorsManager.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: firstHint!,

                        hintStyle: const TextStyle(color: ColorsManager.white)),
                  ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 7.h,
              padding:  EdgeInsetsDirectional.only(start: 10.rSp),
              decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.grey, width: 0.5.w)),
              child: TextFormField(
                style: const TextStyle(color: ColorsManager.white),
                obscureText:isPassword ?? false,
                keyboardType: keyboardType,
                decoration: InputDecoration(

                  border: InputBorder.none,
                  hintText: secondHint,
                  hintStyle: const TextStyle(color: ColorsManager.white),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
