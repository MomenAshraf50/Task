import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/appString.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';
import 'package:task/core/utils/widgets/default_button.dart';
import 'package:task/core/utils/widgets/default_text.dart';
import 'package:task/features/login/presentation/screens/login_screen.dart';
import 'package:task/features/register/presentation/screens/create_account_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    ScreenSizes.screenHeight = MediaQuery.of(context).size.height;
    ScreenSizes.screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10.h),
            Image.asset(AppString.welcomePageLogoPath),
            verticalSpace(5.h),
            DefaultText(
              title: AppString.welcomePageHeadLine,
              style: Style.small,
              color: ColorsManager.white,
              fontSize: 18.rSp,
            ),
            verticalSpace(2.h),
            DefaultText(
              title: AppString.welcomePageBody,
              style: Style.small,
              fontSize: 14.rSp,
              color: ColorsManager.grey,
            ),
            verticalSpace(10.h),
            Center(
              child: DefaultButton(
                color: ColorsManager.orange,
                onPressed: (){
                  navigateTo(context, const CreateAccountScreen());
                },
                title: AppString.register,
              ),
            ),
            verticalSpace(2.h),
            Center(
              child: DefaultButton(
                color: ColorsManager.darkBlue,
                onPressed: (){
                  navigateTo(context, const LogInScreen());
                },
                title: AppString.logIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
