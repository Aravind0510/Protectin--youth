import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';

class Iphone1314ThirteenScreen extends StatelessWidget {
  const Iphone1314ThirteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 54.h, vertical: 48.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview226x277,
                      height: 226.v,
                      width: 277.h),
                  SizedBox(height: 78.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Username :",
                            style: CustomTextStyles.titleLargeBold23),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "xxxxxx ", style: theme.textTheme.titleLarge)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 21.v),
                  Text("Nickname : xxxxx", style: theme.textTheme.titleLarge),
                  SizedBox(height: 17.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Email Id:",
                            style: CustomTextStyles.titleLargeBold23),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "xxxxx@gmail.com",
                            style: theme.textTheme.titleLarge)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 54.v),
                  CustomElevatedButton(
                      height: 68.v,
                      text: "Update Profile",
                      margin: EdgeInsets.only(left: 34.h, right: 40.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeWhiteA700SemiBold,
                      onPressed: () {
                        onTapUpdateProfile(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEvaArrowIosBackOutline,
            margin: EdgeInsets.only(left: 11.h, top: 15.v, bottom: 14.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "My Profile"),
        styleType: Style.bgShadow);
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }

  /// Navigates to the iphone1314FourteenScreen when the action is triggered.
  onTapUpdateProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314FourteenScreen);
  }
}
