import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/appbar_trailing_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';
import 'package:safetycompass/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314SixteenScreen extends StatelessWidget {
  Iphone1314SixteenScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController lastNameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController phoneNumberEditTextController = TextEditingController();

  TextEditingController qualificationEditTextController =
      TextEditingController();

  TextEditingController modeOfCounsellingEditTextController =
      TextEditingController();

  TextEditingController dateEditTextController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 28.v),
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 251.h,
                              margin: EdgeInsets.only(right: 38.h),
                              child: Text(
                                  "Registration for Academic Counselling",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.titleLargeSemiBold))),
                      SizedBox(height: 18.v),
                      _buildNameRow(context),
                      SizedBox(height: 37.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 23.v),
                      _buildPhoneNumberEditText(context),
                      SizedBox(height: 23.v),
                      _buildQualificationEditText(context),
                      SizedBox(height: 18.v),
                      _buildModeOfCounsellingEditText(context),
                      SizedBox(height: 15.v),
                      _buildDateEditText(context),
                      SizedBox(height: 37.v),
                      _buildRegisterButton(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgEvaArrowIosBackOutline,
            margin: EdgeInsets.only(left: 11.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "SafetyCompass"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCharmMenuKebab,
              margin: EdgeInsets.fromLTRB(15.h, 15.v, 15.h, 21.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 2.v),
        child: CustomTextFormField(
            width: 175.h,
            controller: nameEditTextController,
            hintText: "Frist name",
            hintStyle: CustomTextStyles.bodyLarge17,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 13.h, vertical: 15.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray1));
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return CustomTextFormField(
        width: 162.h,
        controller: lastNameEditTextController,
        hintText: "Last name",
        hintStyle: CustomTextStyles.bodyLarge17,
        contentPadding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 16.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray1);
  }

  /// Section Widget
  Widget _buildNameRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNameEditText(context),
              _buildLastNameEditText(context)
            ]));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: emailEditTextController,
            hintText: "Email Id",
            hintStyle: CustomTextStyles.bodyLarge17,
            textInputType: TextInputType.emailAddress,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 13.h, vertical: 17.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray1));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: phoneNumberEditTextController,
            hintText: "Phone number",
            hintStyle: CustomTextStyles.bodyLarge17,
            textInputType: TextInputType.phone,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 13.h, vertical: 17.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray1));
  }

  /// Section Widget
  Widget _buildQualificationEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: qualificationEditTextController,
            hintText: "Qualification",
            hintStyle: CustomTextStyles.bodyLarge17,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray1));
  }

  /// Section Widget
  Widget _buildModeOfCounsellingEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: modeOfCounsellingEditTextController,
            hintText: "Mode of counselling",
            hintStyle: CustomTextStyles.bodyLarge17,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray1));
  }

  /// Section Widget
  Widget _buildDateEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: dateEditTextController,
            hintText: "Date and Time",
            hintStyle: CustomTextStyles.bodyLarge17,
            textInputAction: TextInputAction.done,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 11.h, vertical: 17.v),
            borderDecoration: TextFormFieldStyleHelper.fillGray1));
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        height: 62.v,
        width: 169.h,
        text: "Register",
        buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Icroundhome:
        return AppRoutes.iphone1314TwelveContainerPage;
      case BottomBarEnum.Fluentpeoplec:
        return "/";
      case BottomBarEnum.Solarsettingsbold:
        return "/";
      case BottomBarEnum.Userblack900:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.iphone1314TwelveContainerPage:
        return Iphone1314TwelveContainerPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }
}
