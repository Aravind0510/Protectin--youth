import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';
import 'package:safetycompass/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FourScreen extends StatelessWidget {
  Iphone1314FourScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController newPasswordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();

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
                        EdgeInsets.only(left: 27.h, top: 92.v, right: 27.h),
                    child: Column(children: [
                      Text("Reset Password",
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 45.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 318.h,
                              margin: EdgeInsets.only(right: 16.h),
                              child: Text(
                                  "Enter the email Id associated with this account",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 49.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 19.v),
                      _buildNewPasswordEditText(context),
                      SizedBox(height: 19.v),
                      _buildConfirmPasswordEditText(context),
                      SizedBox(height: 38.v),
                      _buildResetButton(context),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEvaArrowIosBackOutline,
            margin: EdgeInsets.fromLTRB(7.h, 16.v, 349.h, 16.v),
            onTap: () {
              onTapImage(context);
            }),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
        hintText: "Email Id",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(26.h, 15.v, 30.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail, height: 20.v, width: 24.h)),
        prefixConstraints: BoxConstraints(maxHeight: 51.v));
  }

  /// Section Widget
  Widget _buildNewPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: newPasswordEditTextController,
        hintText: "New password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(26.h, 14.v, 30.h, 13.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMdipassword,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 51.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordEditTextController,
        hintText: "Confirm password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(26.h, 16.v, 30.h, 11.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMdipassword,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 51.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildResetButton(BuildContext context) {
    return CustomElevatedButton(
        width: 139.h,
        text: "Reset",
        onPressed: () {
          onTapResetButton(context);
        });
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapResetButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }
}
