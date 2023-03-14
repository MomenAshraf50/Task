import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/core/utils/resources/colors_manager.dart';

class CodeTextInput extends StatelessWidget {
   CodeTextInput({Key? key,required this.onChanged,required this.focusNode}) : super(key: key);

  Function(String) onChanged;
   FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsetsDirectional.only(start: 10),
      decoration: BoxDecoration(
          border: Border.all(color: ColorsManager.grey, width: 2)),

      child: TextFormField(
        keyboardType: TextInputType.number,
        focusNode: focusNode,
        maxLength: 1, // This limits the input length to 1 character
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly // This filters out non-numeric input
        ],
        onChanged: onChanged,
        style: const TextStyle(color: ColorsManager.white),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
