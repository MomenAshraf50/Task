import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/appString.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';
import 'package:task/core/utils/widgets/costume_clipper.dart';
import 'package:task/core/utils/widgets/default_button.dart';
import 'package:task/core/utils/widgets/default_text.dart';
import 'package:task/features/register/presentation/screens/personal_information_screen.dart';
import 'package:task/features/register/presentation/widgets/code_text_input.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode1 = FocusNode();
    final FocusNode focusNode2 = FocusNode();
    final FocusNode focusNode3 = FocusNode();
    final FocusNode focusNode4 = FocusNode();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                          start: 50.rSp, top: 10.rSp),
                      child: Image.asset(
                        AppString.mainLogoPath,
                        height: 18.h,
                      ),
                    ),
                  ),
                  CostumeClipper(
                    height: 80.h,
                    color: ColorsManager.darkBlue,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpace(4.h),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.keyboard_arrow_up,
                                color: ColorsManager.white,
                                size: 30.rSp,
                              )),
                          Padding(
                            padding: EdgeInsets.all(20.rSp),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultText(
                                  title: AppString.insertCode,
                                  style: Style.small,
                                  fontSize: 30.rSp,
                                ),
                                verticalSpace(1.h),
                                DefaultText(
                                  title: AppString.insertCodeBody,
                                  style: Style.small,
                                  fontSize: 16.rSp,
                                ),
                                verticalSpace(4.h),
                                Row(
                                  children: [
                                    Expanded(
                                      child: CodeTextInput(
                                        onChanged: (value) {
                                          if (value.length == 1) {
                                            focusNode2.requestFocus();
                                          }
                                        },
                                        focusNode: focusNode1,
                                      ),
                                    ),
                                    horizontalSpace(5.w),
                                    Expanded(
                                        child: CodeTextInput(
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          focusNode3.requestFocus();
                                        }
                                      },
                                      focusNode: focusNode2,
                                    )),
                                    horizontalSpace(5.w),
                                    Expanded(
                                        child: CodeTextInput(
                                      onChanged: (value) {
                                        if (value.length == 1) {
                                          focusNode4.requestFocus();
                                        }
                                      },
                                      focusNode: focusNode3,
                                    )),
                                    horizontalSpace(5.w),
                                    Expanded(
                                        child: CodeTextInput(
                                      onChanged: (value) {},
                                      focusNode: focusNode4,
                                    )),
                                  ],
                                ),
                                verticalSpace(18.h),
                                Center(
                                  child: DefaultButton(
                                    color: ColorsManager.orange,
                                    onPressed: () {
                                      navigateTo(context,
                                          const PersonalInformationScreen());
                                    },
                                    child: Row(
                                      children:  [
                                        DefaultText(
                                          title: AppString.next,
                                          style: Style.small,
                                          fontSize: 24.rSp,
                                        ),
                                        const Spacer(),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: ColorsManager.white,
                                          size: 30.rSp,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CostumeClipper(
                    height: 18.h,
                    color: ColorsManager.lightBlue,
                  ),
                  CostumeClipper(
                    height: 15.h,
                    color: ColorsManager.orange,
                  ),
                  CostumeClipper(
                    height: 12.h,
                    color: ColorsManager.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
