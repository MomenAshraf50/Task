import 'package:flutter/material.dart';
import 'package:task/core/utils/resources/appString.dart';
import 'package:task/core/utils/resources/colors_manager.dart';
import 'package:task/core/utils/resources/constants_manager.dart';
import 'package:task/core/utils/widgets/costume_clipper.dart';
import 'package:task/core/utils/widgets/default_button.dart';
import 'package:task/core/utils/widgets/default_text.dart';
import 'package:task/core/utils/widgets/text_input.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  int age = 0;
  String selectedValue = AppString.district;

  @override
  Widget build(BuildContext context) {

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
                      padding:  EdgeInsetsDirectional.only(
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
                  ),
                  CostumeClipper(
                    height: 77.h,
                    color: ColorsManager.lightBlue,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: SingleChildScrollView(
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
                                padding:  EdgeInsets.all(20.rSp),
                                child: Column(
                                  children: [
                                     DefaultText(
                                      title: AppString.personalInformation,
                                      style: Style.small,
                                      fontSize: 26.rSp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    verticalSpace(2.h),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextInput(
                                            twoParts: false,
                                            secondHint: AppString.name,
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                        horizontalSpace(4.w),
                                        Expanded(
                                          child: TextInput(
                                            twoParts: false,
                                            secondHint: AppString.lastName,
                                            keyboardType: TextInputType.name,
                                          ),
                                        ),
                                      ],
                                    ),
                                    verticalSpace(3.h),
                                    Row(
                                      children: [
                                        DefaultText(
                                          title: AppString.age,
                                          style: Style.small,
                                          fontSize: 16.rSp,
                                        ),
                                        const Spacer(),
                                        Container(
                                            height: 6.h,
                                            width: 30.w,
                                            padding:
                                            EdgeInsetsDirectional.only(
                                                    start: 10.rSp),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ColorsManager.grey,
                                                    width: 0.5.w)),
                                            child: Row(
                                              children: [
                                                DefaultText(
                                                  title: "$age",
                                                  style: Style.small,
                                                  fontSize: 14.rSp,
                                                ),
                                                const Spacer(),
                                                Column(
                                                  children: [
                                                    InkWell(
                                                      onTap:(){
                                                        setState(() {
                                                          age++;

                                                        });
                                                      },
                                                      child:  Icon(
                                                        Icons.keyboard_arrow_up,
                                                        size: 22.rSp,
                                                        color: ColorsManager.white,

                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: (){
                                                        if(age!=0){
                                                          setState(() {
                                                            age--;
                                                          });
                                                        }
                                                      },
                                                      child:  Icon(
                                                          Icons.keyboard_arrow_down,
                                                        size: 22.rSp,
                                                        color: ColorsManager.white,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )),
                                      ],
                                    ),
                                    verticalSpace(3.h),
                                    Container(
                                      height: 6.h,
                                      padding:  EdgeInsetsDirectional.only(start: 10.rSp),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: ColorsManager.grey, width: 0.5.w)),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: DropdownButton(
                                          isExpanded: true,
                                          iconDisabledColor: ColorsManager.white,
                                          iconEnabledColor: ColorsManager.white,
                                          dropdownColor: ColorsManager.grey,
                                          style: const TextStyle(
                                            color: ColorsManager.white,
                                          ),
                                          value: selectedValue,
                                          hint:  DefaultText(
                                            title: AppString.district,
                                            style: Style.small,
                                            fontSize: 24.rSp,
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              selectedValue = value!;
                                            });
                                          },
                                          items:  [
                                            DropdownMenuItem(
                                              value: AppString.district,
                                              child: DefaultText(
                                                title: AppString.district,
                                                style: Style.small,
                                                fontSize: 24.rSp,
                                              ),

                                            ),
                                            DropdownMenuItem(
                                              value: 'cairo',
                                              child: DefaultText(
                                                title: 'cairo',
                                                style: Style.small,
                                                fontSize: 24.rSp,
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: 'alexandria',
                                              child: DefaultText(
                                                title: 'alexandria',
                                                style: Style.small,
                                                fontSize: 24.rSp,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    verticalSpace(10.h),
                                    Center(
                                      child: DefaultButton(
                                        color: ColorsManager.orange,
                                        onPressed: () {},
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
                                )),
                          ],
                        ),
                      ),
                    ),
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
