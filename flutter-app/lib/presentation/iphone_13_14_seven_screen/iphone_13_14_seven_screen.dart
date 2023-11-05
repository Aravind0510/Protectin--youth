import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/appbar_trailing_image.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';
import 'package:safetycompass/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone1314SevenScreen extends StatelessWidget {
  Iphone1314SevenScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 15.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20.h, right: 17.h),
                      child: CustomSearchView(
                          controller: searchController, hintText: "Search")),
                  SizedBox(height: 18.v),
                  _buildScreenshotRow(context),
                  SizedBox(height: 32.v),
                  _buildMentalHealthSupportRow(context),
                  SizedBox(height: 17.v),
                  _buildOnlineSafetyRow(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 69.v,
        centerTitle: true,
        title: AppbarTitle(text: "SafetyCompass"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCharmMenuKebab,
              margin: EdgeInsets.fromLTRB(15.h, 18.v, 15.h, 22.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildScreenshotRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 12.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgScreenshot2023,
              height: 159.v,
              width: 226.h,
              margin: EdgeInsets.only(top: 13.v)),
          Container(
              width: 100.h,
              margin: EdgeInsets.only(left: 4.h, top: 61.v, bottom: 62.v),
              child: Text("Protecting the Youth",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLargeSemiBold))
        ]));
  }

  /// Section Widget
  Widget _buildMentalHealthSupportRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapMentalHealthSupport(context);
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 34.h, vertical: 7.v),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 10.v),
                            CustomImageView(
                                imagePath: ImageConstant.imgWhatsappImage,
                                height: 93.v,
                                width: 95.h,
                                margin: EdgeInsets.only(left: 6.h)),
                            SizedBox(
                                width: 107.h,
                                child: Text("Mental Health  \n     Support",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium))
                          ]))),
              GestureDetector(
                  onTap: () {
                    onTapPhysicalHealth(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 6.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.h, vertical: 40.v),
                      decoration: AppDecoration.outlineBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 64.h,
                                margin: EdgeInsets.only(bottom: 8.v),
                                child: Text(
                                    "  Physical    \n   health    \n  support",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium)),
                            CustomImageView(
                                imagePath: ImageConstant.imgWhatsappImage59x65,
                                height: 59.v,
                                width: 65.h,
                                margin: EdgeInsets.only(left: 3.h, bottom: 8.v))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildOnlineSafetyRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapOnlineSafety(context);
              },
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
                  decoration: AppDecoration.outlineBluegray1001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 6.v),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgImageRemovebgPreview97x110,
                            height: 97.v,
                            width: 110.h,
                            margin: EdgeInsets.only(left: 1.h)),
                        SizedBox(height: 4.v),
                        Container(
                            width: 49.h,
                            margin: EdgeInsets.only(left: 29.h),
                            child: Text("online safety",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium))
                      ]))),
          GestureDetector(
              onTap: () {
                onTapAcademicCounseling(context);
              },
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 18.v),
                  decoration: AppDecoration.outlineBluegray1002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgImageRemovebgPreview95x155,
                            height: 95.v,
                            width: 155.h),
                        SizedBox(height: 6.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 87.h,
                                margin: EdgeInsets.only(right: 27.h),
                                child: Text("Academic Counseling",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium)))
                      ])))
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

  /// Navigates to the iphone1314EightScreen when the action is triggered.
  onTapMentalHealthSupport(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314EightScreen);
  }

  /// Navigates to the iphone1314NineScreen when the action is triggered.
  onTapPhysicalHealth(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314NineScreen);
  }

  /// Navigates to the iphone1314TenScreen when the action is triggered.
  onTapOnlineSafety(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TenScreen);
  }

  /// Navigates to the iphone1314ElevenScreen when the action is triggered.
  onTapAcademicCounseling(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314ElevenScreen);
  }
}
