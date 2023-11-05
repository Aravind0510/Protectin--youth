import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone1314SeventeenScreen extends StatelessWidget {
  Iphone1314SeventeenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAllDiscussion(context),
                      SizedBox(height: 37.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 278.h,
                              margin: EdgeInsets.only(left: 52.h, right: 53.h),
                              child: Text("Cybersecurity in Modern world",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.displaySmall))),
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage5,
                                height: 41.v,
                                width: 37.h),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 2.h, top: 9.v, bottom: 11.v),
                                child: Text("yohan_18",
                                    style: theme.textTheme.titleMedium)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 12.h, top: 11.v, bottom: 11.v),
                                child: Text("24 hours ago",
                                    style: CustomTextStyles.bodyMediumPrimary))
                          ])),
                      SizedBox(height: 13.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 352.h,
                              margin: EdgeInsets.only(left: 21.h, right: 10.h),
                              child: Text(
                                  "Hey there! I'm a bit new to this whole cybersecurity thing. Can anyone recommend some essential steps to stay safe online?",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleLargeMedium))),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text("Showing 1-15 of 21 comments",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 10.v),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage4,
                                    height: 33.adaptSize,
                                    width: 33.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 4.h, top: 14.v),
                                    child: Text("CyberPro",
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, top: 14.v),
                                    child: Text("20 hours ago",
                                        style: CustomTextStyles
                                            .bodyMediumBlue70001))
                              ])),
                      SizedBox(height: 6.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 341.h,
                              margin: EdgeInsets.only(left: 17.h, right: 25.h),
                              child: Text(
                                  " Welcome to the world of cybersecurity! First things first, make sure you're using strong, unique passwords for all your accounts. A password manager can help with that.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMedium14))),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: 35.v,
                                    width: 33.h),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 3.h, top: 10.v, bottom: 7.v),
                                    child: Text("SecurityGeek",
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 4.h, top: 13.v, bottom: 4.v),
                                    child: Text("18 hours ago",
                                        style: CustomTextStyles
                                            .bodyMediumBlue70001))
                              ])),
                      _buildUpdateProfile(context),
                      Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage3,
                                    height: 28.v,
                                    width: 29.h),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 6.h, top: 7.v, bottom: 3.v),
                                    child: Text("TechWhiz",
                                        style: theme.textTheme.titleSmall)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 12.h, top: 9.v),
                                    child: Text("18 hours ago",
                                        style: CustomTextStyles
                                            .bodyMediumBlue70001))
                              ])),
                      SizedBox(height: 4.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 347.h,
                              margin: EdgeInsets.only(left: 15.h, right: 22.h),
                              child: Text(
                                  "Regular software updates are crucial too. They often patch vulnerabilities that hackers can exploit.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyMedium14))),
                      SizedBox(height: 9.v)
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
        centerTitle: true,
        title: AppbarTitle(text: "Community"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildAllDiscussion(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 30.h),
        child: Row(children: [
          SizedBox(
              height: 22.v,
              width: 245.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("All Discussion",
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge)),
                CustomImageView(
                    imagePath: ImageConstant.imgImageRemovebgPreview9x11,
                    height: 9.v,
                    width: 11.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 103.h, bottom: 5.v)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Trending Threads",
                        style: theme.textTheme.bodyLarge))
              ])),
          Container(
              height: 20.v,
              width: 105.h,
              margin: EdgeInsets.only(left: 3.h, top: 2.v),
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImageRemovebgPreview9x11,
                    height: 9.v,
                    width: 11.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 4.v)),
                Align(
                    alignment: Alignment.centerRight,
                    child:
                        Text("Suggestions", style: theme.textTheme.bodyLarge))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildUpdateProfile(BuildContext context) {
    return Container(
        height: 54.v,
        width: 322.h,
        margin: EdgeInsets.only(left: 21.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text("Update Profile",
                      style: CustomTextStyles.titleLargeWhiteA700SemiBold))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 322.h,
                  child: Text(
                      "Absolutely, and enable two-factor authentication (2FA) wherever possible. It's a game-changer for added security.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMedium14)))
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

  /// Navigates to the iphone1314FifteenScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314FifteenScreen);
  }
}
