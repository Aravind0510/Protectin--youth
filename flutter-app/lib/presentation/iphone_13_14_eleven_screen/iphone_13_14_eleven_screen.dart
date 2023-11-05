import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/appbar_trailing_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone1314ElevenScreen extends StatelessWidget {
  Iphone1314ElevenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 29.v),
                child: Column(children: [
                  SizedBox(height: 2.v),
                  Text("Academic Counselling",
                      style: CustomTextStyles.titleLargeSemiBold23),
                  SizedBox(height: 23.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 234.v,
                      width: 321.h),
                  SizedBox(height: 21.v),
                  Container(
                      width: 327.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Text(
                          "Guiding students to achieve their academic  \ngoals through personalized counseling and    \n                               support.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 288.h,
                          margin: EdgeInsets.only(left: 5.h, right: 39.h),
                          child: Text(
                              "Here are some tips for academic counselors to effectively support their students:\n\n1.Build a trusting relationship\n2.Active listening\n3.Understand individual needs\n4.Set clear goals\n5.Time management and study skills\n6.Encourage self-advocacy",
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge))),
                  SizedBox(height: 39.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            onTapTxtClickheretoregister(context);
                          },
                          child: Container(
                              width: 270.h,
                              margin: EdgeInsets.only(left: 44.h, right: 18.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Click here",
                                        style: CustomTextStyles
                                            .titleMediumBlue700),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "to",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text: " Register",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text: " for",
                                        style: theme.textTheme.titleMedium),
                                    TextSpan(
                                        text: " academic Counselling",
                                        style: theme.textTheme.titleMedium)
                                  ]),
                                  textAlign: TextAlign.center))))
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

  /// Navigates to the iphone1314SixteenScreen when the action is triggered.
  onTapTxtClickheretoregister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SixteenScreen);
  }
}
