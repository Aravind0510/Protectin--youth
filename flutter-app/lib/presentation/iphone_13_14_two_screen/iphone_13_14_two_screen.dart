import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';
import 'package:safetycompass/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314TwoScreen extends StatelessWidget {
  Iphone1314TwoScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.h, vertical: 11.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: 188.v,
                              width: 207.h,
                              margin: EdgeInsets.only(left: 62.h)),
                          SizedBox(height: 2.v),
                          Padding(
                              padding: EdgeInsets.only(left: 124.h),
                              child: Text("Login",
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 42.v),
                          Padding(
                              padding: EdgeInsets.only(left: 26.h, right: 12.h),
                              child: CustomTextFormField(
                                  controller: userNameController,
                                  hintText: "Username",
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          20.h, 10.v, 30.h, 10.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgUser,
                                          height: 19.v,
                                          width: 22.h)),
                                  prefixConstraints:
                                      BoxConstraints(maxHeight: 47.v))),
                          SizedBox(height: 40.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.h),
                              child: CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  alignment: Alignment.center,
                                  obscureText: true)),
                          SizedBox(height: 15.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 31.h),
                                  child: Text("forgot password?",
                                      style: CustomTextStyles
                                          .bodyMediumBlue70001_1))),
                          SizedBox(height: 28.v),
                          CustomElevatedButton(
                              width: 128.h,
                              text: "Login",
                              onPressed: () {
                                onTapLogin(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account? ",
                                            style: theme.textTheme.bodyLarge),
                                        TextSpan(
                                            text: "Sign up",
                                            style: CustomTextStyles
                                                .bodyLargeBlue70001_1)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 28.v),
                          _buildLineOne(context),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 68.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFlatColorIconsGoogle,
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    radius: BorderRadius.circular(24.h)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLogosFacebook,
                                    height: 48.v,
                                    width: 51.h,
                                    radius: BorderRadius.circular(24.h),
                                    margin: EdgeInsets.only(left: 27.h)),
                                Container(
                                    height: 44.v,
                                    width: 45.h,
                                    margin:
                                        EdgeInsets.only(left: 27.h, top: 4.v),
                                    decoration: AppDecoration.outlineWhiteA,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgTwitter,
                                        height: 43.v,
                                        width: 45.h,
                                        alignment: Alignment.center))
                              ])),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 389.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEvaArrowIosBackOutline,
            margin: EdgeInsets.fromLTRB(10.h, 15.v, 345.h, 14.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildLineOne(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Container(
              height: 1.v,
              width: 144.h,
              margin: EdgeInsets.only(top: 16.v, bottom: 12.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(width: 144.h, child: Divider())),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(width: 144.h, child: Divider()))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text("or",
                  style: CustomTextStyles.headlineSmallBlack900Regular)),
          Padding(
              padding: EdgeInsets.only(top: 16.v, bottom: 12.v),
              child: SizedBox(width: 162.h, child: Divider(indent: 5.h)))
        ]));
  }

  /// Navigates to the iphone1314FourScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314FourScreen);
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }

  /// Navigates to the iphone1314ThreeScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314ThreeScreen);
  }
}
