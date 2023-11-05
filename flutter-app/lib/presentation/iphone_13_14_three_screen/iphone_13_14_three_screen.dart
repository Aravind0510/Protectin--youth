import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';
import 'package:safetycompass/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314ThreeScreen extends StatelessWidget {
  Iphone1314ThreeScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

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
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 31.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 115.h),
                                  child: Text("Signup",
                                      style: theme.textTheme.headlineLarge))),
                          SizedBox(height: 45.v),
                          _buildUserName(context),
                          SizedBox(height: 28.v),
                          _buildEmail(context),
                          SizedBox(height: 36.v),
                          _buildPassword(context),
                          SizedBox(height: 29.v),
                          _buildConfirmPassword(context),
                          SizedBox(height: 24.v),
                          _buildSignupButton(context),
                          SizedBox(height: 24.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean(context);
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Already have an account? ",
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "Signin",
                                        style: CustomTextStyles
                                            .bodyLargeBlue70001_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 7.v),
                          _buildLineThree(context),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 72.h, right: 84.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgFlatColorIconsGoogle,
                                        height: 48.adaptSize,
                                        width: 48.adaptSize,
                                        radius: BorderRadius.circular(24.h)),
                                    Spacer(flex: 51),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLogosFacebook,
                                        height: 48.v,
                                        width: 51.h,
                                        radius: BorderRadius.circular(24.h)),
                                    Spacer(flex: 48),
                                    Container(
                                        height: 44.v,
                                        width: 45.h,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                        decoration: AppDecoration.outlineWhiteA,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgTwitter,
                                            height: 43.v,
                                            width: 45.h,
                                            alignment: Alignment.center))
                                  ])))
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEvaArrowIosBackOutline,
            margin: EdgeInsets.fromLTRB(10.h, 16.v, 346.h, 16.v),
            onTap: () {
              onTapImage(context);
            }),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 18.h),
        child: CustomTextFormField(
            controller: userNameController,
            hintText: "Username",
            prefix: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 19.adaptSize,
                    width: 19.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 56.v),
            contentPadding:
                EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v)));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 18.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email Id",
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(28.h, 15.v, 30.h, 17.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcbaselineemail,
                    height: 19.v,
                    width: 21.h)),
            prefixConstraints: BoxConstraints(maxHeight: 51.v)));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 18.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "Create password",
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 16.h),
        child: CustomTextFormField(
            controller: confirmPasswordController,
            hintText: "Confirm Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
        width: 139.h,
        text: "Signup",
        margin: EdgeInsets.only(left: 103.h),
        onPressed: () {
          onTapSignupButton(context);
        },
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildLineThree(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Padding(
                  padding: EdgeInsets.only(top: 16.v, bottom: 12.v),
                  child: SizedBox(width: 144.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text("or",
                      style: CustomTextStyles.headlineSmallBlack900Regular)),
              Padding(
                  padding: EdgeInsets.only(top: 16.v, bottom: 12.v),
                  child: SizedBox(width: 166.h, child: Divider(indent: 9.h)))
            ])));
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapSignupButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }
}
