import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/appbar_trailing_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone1314TenScreen extends StatelessWidget {
  Iphone1314TenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(11.h),
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Text("Online Safety",
                      style: CustomTextStyles.titleLargeSemiBold23),
                  SizedBox(height: 20.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview216x364,
                      height: 216.v,
                      width: 364.h),
                  SizedBox(height: 41.v),
                  Container(
                      width: 285.h,
                      margin: EdgeInsets.only(left: 42.h, right: 39.h),
                      child: Text(
                          "Online safety involves protecting your personal information and practicing responsible behavior while using the internet.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 19.v),
                  _buildTypes1(context)
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
  Widget _buildTypes1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 9.v),
        decoration: AppDecoration.fillGray50,
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 2.h),
              child: _buildHelpline(context, helplineText: "Types")),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 2.h),
              child: _buildHelpline(context, helplineText: "Helpline")),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h, right: 2.h),
              child: _buildHelpline(context, helplineText: "Ways to Combat")),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: _buildVideos(context, videoLabel: "Activities")),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: _buildVideos(context, videoLabel: "Videos"))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildHelpline(
    BuildContext context, {
    required String helplineText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.fillGray200,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 77.h),
                  child: Text(helplineText,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.black900))),
              CustomImageView(
                  imagePath: ImageConstant.imgImageRemovebgPreview18x18,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 58.h, bottom: 7.v))
            ]));
  }

  /// Common widget
  Widget _buildVideos(
    BuildContext context, {
    required String videoLabel,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 7.v),
        decoration: AppDecoration.fillGray200,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(videoLabel,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.black900))),
              CustomImageView(
                  imagePath: ImageConstant.imgImageRemovebgPreview18x18,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 60.h, top: 6.v, bottom: 3.v))
            ]));
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
