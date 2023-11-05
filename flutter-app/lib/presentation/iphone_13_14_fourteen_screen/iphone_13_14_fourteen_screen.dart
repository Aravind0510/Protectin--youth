import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';
import 'package:safetycompass/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FourteenScreen extends StatelessWidget {
  Iphone1314FourteenScreen({Key? key}) : super(key: key);

  TextEditingController userEditTextController = TextEditingController();

  TextEditingController tdesignnotificationfilledEditTextController =
      TextEditingController();

  TextEditingController fluentdarkthemeregularEditTextController =
      TextEditingController();

  TextEditingController materialsymbolslogoutsharpEditTextController =
      TextEditingController();

  TextEditingController filterEditTextController = TextEditingController();

  TextEditingController materialsymbolsfeedbackroundedEditTextController =
      TextEditingController();

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
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 44.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("General",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineSmallBlack900)),
                      SizedBox(height: 65.v),
                      _buildUser(context),
                      SizedBox(height: 39.v),
                      _buildTdesignnotificationfilled(context),
                      SizedBox(height: 30.v),
                      _buildFluentdarkthemeregular(context),
                      SizedBox(height: 27.v),
                      _buildMaterialsymbolslogoutsharp(context),
                      SizedBox(height: 22.v),
                      _buildMdiDeleteRow(context),
                      SizedBox(height: 4.v),
                      Divider(endIndent: 18.h),
                      SizedBox(height: 44.v),
                      Text("Feedback",
                          style: CustomTextStyles.headlineSmallBlack900),
                      SizedBox(height: 39.v),
                      _buildFilterEditText(context),
                      SizedBox(height: 16.v),
                      _buildMaterialsymbolsfeedbackroundedEditText(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
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
        title:
            AppbarTitle(text: "Settings", margin: EdgeInsets.only(left: 84.h)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildUserEditText(BuildContext context) {
    return CustomTextFormField(
        width: 322.h,
        controller: userEditTextController,
        hintText: "Account",
        alignment: Alignment.center,
        prefix: Container(
            margin: EdgeInsets.only(right: 13.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUser, height: 19.v, width: 22.h)),
        prefixConstraints: BoxConstraints(maxHeight: 29.v),
        contentPadding: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 1.v),
        borderDecoration: TextFormFieldStyleHelper.underLineBlack,
        filled: false);
  }

  /// Section Widget
  Widget _buildUser(BuildContext context) {
    return SizedBox(
        height: 29.v,
        width: 322.h,
        child: Stack(alignment: Alignment.topRight, children: [
          _buildUserEditText(context),
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview14x22,
              height: 14.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 3.v, right: 6.h))
        ]));
  }

  /// Section Widget
  Widget _buildTdesignnotificationfilledEditText(BuildContext context) {
    return CustomTextFormField(
        width: 316.h,
        controller: tdesignnotificationfilledEditTextController,
        hintText: "Notification",
        alignment: Alignment.center,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(2.h, 1.v, 14.h, 7.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgTdesignnotificationfilled,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 27.v),
        contentPadding: EdgeInsets.only(right: 30.h),
        borderDecoration: TextFormFieldStyleHelper.underLineBlack,
        filled: false);
  }

  /// Section Widget
  Widget _buildTdesignnotificationfilled(BuildContext context) {
    return SizedBox(
        height: 27.v,
        width: 316.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview14x22,
              height: 14.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 4.v)),
          _buildTdesignnotificationfilledEditText(context)
        ]));
  }

  /// Section Widget
  Widget _buildFluentdarkthemeregularEditText(BuildContext context) {
    return CustomTextFormField(
        width: 316.h,
        controller: fluentdarkthemeregularEditTextController,
        hintText: "Theme",
        alignment: Alignment.center,
        prefix: Container(
            margin: EdgeInsets.only(left: 1.h, right: 9.h, bottom: 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgFluentdarktheme20regular,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 30.v),
        contentPadding: EdgeInsets.only(top: 4.v, right: 30.h, bottom: 4.v),
        borderDecoration: TextFormFieldStyleHelper.underLineBlack,
        filled: false);
  }

  /// Section Widget
  Widget _buildFluentdarkthemeregular(BuildContext context) {
    return SizedBox(
        height: 30.v,
        width: 316.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview14x22,
              height: 14.v,
              width: 22.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 5.v)),
          _buildFluentdarkthemeregularEditText(context)
        ]));
  }

  /// Section Widget
  Widget _buildMaterialsymbolslogoutsharpEditText(BuildContext context) {
    return CustomTextFormField(
        width: 316.h,
        controller: materialsymbolslogoutsharpEditTextController,
        hintText: "Logout",
        alignment: Alignment.center,
        prefix: Container(
            margin: EdgeInsets.only(right: 6.h, bottom: 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMaterialsymbolslogoutsharp,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 32.v),
        contentPadding: EdgeInsets.only(top: 5.v, right: 30.h, bottom: 5.v),
        borderDecoration: TextFormFieldStyleHelper.underLineBlack,
        filled: false);
  }

  /// Section Widget
  Widget _buildMaterialsymbolslogoutsharp(BuildContext context) {
    return SizedBox(
        height: 32.v,
        width: 316.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview14x22,
              height: 14.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 6.v, right: 2.h)),
          _buildMaterialsymbolslogoutsharpEditText(context)
        ]));
  }

  /// Section Widget
  Widget _buildMdiDeleteRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 20.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMdiDelete,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.v, bottom: 5.v),
              child: Text("Delete Account", style: theme.textTheme.bodyLarge)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgImageRemovebgPreview14x22,
              height: 14.v,
              width: 22.h,
              margin: EdgeInsets.only(top: 13.v))
        ]));
  }

  /// Section Widget
  Widget _buildFilterEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 23.h),
        child: CustomTextFormField(
            controller: filterEditTextController,
            hintText: "Report a Bug",
            hintStyle: theme.textTheme.bodyMedium!,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(4.h, 1.v, 10.h, 1.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFilter,
                    height: 19.v,
                    width: 20.h)),
            prefixConstraints: BoxConstraints(maxHeight: 26.v),
            contentPadding: EdgeInsets.only(right: 30.h),
            borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            filled: false));
  }

  /// Section Widget
  Widget _buildMaterialsymbolsfeedbackroundedEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 21.h),
        child: CustomTextFormField(
            controller: materialsymbolsfeedbackroundedEditTextController,
            hintText: "Send Feedback",
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.only(right: 7.h, bottom: 7.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMaterialsymbolsfeedbackrounded,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 31.v),
            contentPadding: EdgeInsets.only(top: 1.v, right: 30.h, bottom: 1.v),
            borderDecoration: TextFormFieldStyleHelper.underLineBlack,
            filled: false));
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
