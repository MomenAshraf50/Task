import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/appString.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';
import 'package:task/core/utils/widgets/text_input.dart';
import 'package:task/core/utils/widgets/default_button.dart';
import 'package:task/core/utils/widgets/default_text.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(40.rSp),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(10.h),
              Center(
                  child: Image.asset(
                AppString.mainLogoPath,
                height: 25.h,
              )),
              verticalSpace(10.h),
              DefaultText(
                title: AppString.connect,
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
              verticalSpace(2.h),
              TextInput(
                twoParts: true,
                secondHint: 'mot de passe',
                padding: 0,
                isPassword: isPassword,
                keyboardType: TextInputType.visiblePassword,
                firstWidget: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                      isPassword? Icons.visibility:Icons.visibility_off,
                      color: ColorsManager.grey,
                    )),
              ),
              verticalSpace(8.h),
              Center(
                  child: DefaultButton(
                color: ColorsManager.darkBlue,
                onPressed: () {},
                title: AppString.logIn,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
