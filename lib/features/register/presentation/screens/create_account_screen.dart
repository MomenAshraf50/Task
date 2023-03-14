import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/appString.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';
import 'package:task/core/utils/widgets/text_input.dart';
import 'package:task/core/utils/widgets/costume_clipper.dart';
import 'package:task/core/utils/widgets/default_button.dart';
import 'package:task/core/utils/widgets/default_text.dart';
import 'package:task/features/register/presentation/screens/code_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(40.rSp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          AppString.mainLogoPath,
                          height: 25.h,
                        ),
                      ),
                      verticalSpace(12.h),
                      DefaultText(
                        title: AppString.createAnAccount,
                        style: Style.small,
                        fontSize: 24.rSp,
                        fontWeight: FontWeight.bold,
                      ),
                      verticalSpace(2.h),
                      TextInput(
                        twoParts: true,
                        firstHint: AppString.countryCode,
                        secondHint: AppString.phone,
                        keyboardType: TextInputType.phone,
                      ),
                      verticalSpace(12.h),
                      Center(
                        child: DefaultButton(
                          color: ColorsManager.orange,
                          onPressed: () {
                            navigateTo(context, const CodeScreen());
                          },
                          child: Row(
                            children:  [
                              DefaultText(title: AppString.next, style: Style.small,fontSize: 24.rSp,),
                              const Spacer(),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: ColorsManager.white,
                                size: 30.rSp,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  CostumeClipper(
                    height: 21.h,
                    color: ColorsManager.darkBlue,
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
