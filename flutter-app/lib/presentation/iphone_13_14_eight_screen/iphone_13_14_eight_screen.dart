import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone1314EightScreen extends StatelessWidget {
  Iphone1314EightScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 31.v),
                child: Column(children: [
                  Text("Mental Health Support",
                      style: CustomTextStyles.titleLargeSemiBold23),
                  SizedBox(height: 24.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview241x359,
                      height: 241.v,
                      width: 359.h),
                  SizedBox(height: 27.v),
                  Container(
                      width: 347.h,
                      margin: EdgeInsets.only(left: 14.h),
                      child: Text(
                          "Mental health is about emotional and psychological well-being, coping with stress, maintaining relationships, and making choices that improve one's life.",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 20.v),
                  _buildStepsToMental(context),
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
            margin: EdgeInsets.only(left: 11.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "SafetyCompass"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildStepsToMental(BuildContext context) {
    return Container(
        width: 359.h,
        margin: EdgeInsets.only(right: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 19.v),
        decoration: AppDecoration.fillTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("5 steps to mental wellbeing",
                  style: CustomTextStyles.titleMediumBold),
              SizedBox(height: 10.v),
              Container(
                  width: 239.h,
                  margin: EdgeInsets.only(right: 77.h),
                  child: Text(
                      "1.Connect with other people\n2.Be physically active\n3.Learn new skills\n4.Give to others\n5.Pay attention to the present moment (mindfulness)",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLarge17)),
              SizedBox(height: 19.v)
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
