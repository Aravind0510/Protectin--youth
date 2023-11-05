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
class Iphone1314NineScreen extends StatelessWidget {
  Iphone1314NineScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 31.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Physical Health support",
                          style: CustomTextStyles.titleLargeSemiBold23),
                      SizedBox(height: 25.v),
                      _buildEditText1(context),
                      SizedBox(height: 12.v),
                      Text(" General Ranges of BMI Rate",
                          style: CustomTextStyles.titleMedium17),
                      SizedBox(height: 11.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 225.h,
                              margin: EdgeInsets.only(right: 60.h),
                              child: Text(
                                  "BMI < 18.5: Underweight  BMI 18.5-24.9: Normal Weight  BMI 25-29.9: Overweight  BMI ≥ 30: Obesity ",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 12.v),
                      _buildCoachAdvice(context),
                      SizedBox(height: 2.v)
                    ])),
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
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: CustomTextFormField(
            width: 68.h,
            controller: editTextController,
            textInputAction: TextInputAction.done,
            borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
            fillColor: appTheme.whiteA700));
  }

  /// Section Widget
  Widget _buildCm(BuildContext context) {
    return CustomElevatedButton(
        height: 38.v,
        width: 68.h,
        text: "cm",
        margin: EdgeInsets.only(left: 15.h),
        buttonStyle: CustomButtonStyles.fillWhiteA1,
        buttonTextStyle: CustomTextStyles.titleSmall15);
  }

  /// Section Widget
  Widget _buildKg(BuildContext context) {
    return CustomElevatedButton(
        height: 38.v,
        width: 68.h,
        text: "Kg",
        margin: EdgeInsets.only(left: 15.h),
        buttonStyle: CustomButtonStyles.fillWhiteA1,
        buttonTextStyle: CustomTextStyles.titleSmall15);
  }

  /// Section Widget
  Widget _buildReset(BuildContext context) {
    return CustomElevatedButton(
        height: 36.v,
        width: 77.h,
        text: "Reset",
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Section Widget
  Widget _buildCalculate(BuildContext context) {
    return CustomElevatedButton(
        height: 36.v,
        width: 107.h,
        text: "Calculate",
        margin: EdgeInsets.only(left: 26.h),
        buttonStyle: CustomButtonStyles.fillBlueA,
        buttonTextStyle: CustomTextStyles.titleSmall15);
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return Container(
        width: 363.h,
        margin: EdgeInsets.only(left: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 11.v),
        decoration: AppDecoration.fillTeal40089
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 88.h),
                  child: Text("Track Your BMI",
                      style: CustomTextStyles.titleLargeSemiBold)),
              SizedBox(height: 18.v),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, right: 65.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4.v, bottom: 9.v),
                        child: Text("Height:",
                            style: CustomTextStyles.titleLargeSemiBold)),
                    _buildEditText(context),
                    _buildCm(context)
                  ])),
              SizedBox(height: 12.v),
              Divider(indent: 1.h, endIndent: 6.h),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 28.h, right: 65.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 3.v, bottom: 10.v),
                        child: Text("Weight:",
                            style: CustomTextStyles.titleLargeSemiBold)),
                    Container(
                        height: 38.v,
                        width: 68.h,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: BoxDecoration(color: appTheme.whiteA700)),
                    _buildKg(context)
                  ])),
              SizedBox(height: 20.v),
              Divider(endIndent: 6.h),
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildReset(context),
                        _buildCalculate(context)
                      ])),
              SizedBox(height: 2.v)
            ]));
  }

  /// Section Widget
  Widget _buildCoachAdvice(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 5.h, right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 29.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 44.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("Coach Advice",
                                style: CustomTextStyles.titleLargeBold_1)),
                        SizedBox(height: 23.v),
                        SizedBox(
                            width: 169.h,
                            child: Text(
                                "\"Transform Your Body: A Comprehensive Fitness Journey\"",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyLargeOnPrimary))
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage151x136,
                  height: 151.v,
                  width: 136.h,
                  margin: EdgeInsets.only(left: 8.h, right: 9.h))
            ]));
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
}
