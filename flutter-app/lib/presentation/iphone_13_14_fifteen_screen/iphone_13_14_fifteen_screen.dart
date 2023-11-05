import '../iphone_13_14_fifteen_screen/widgets/dataprivacyand_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/presentation/iphone_13_14_twelve_container_page/iphone_13_14_twelve_container_page.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_bottom_bar.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class Iphone1314FifteenScreen extends StatelessWidget {
  Iphone1314FifteenScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h, right: 98.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("All Discussion",
                                    style: theme.textTheme.bodyLarge)),
                            Container(
                                height: 20.v,
                                width: 144.h,
                                margin: EdgeInsets.only(left: 4.h),
                                child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgImageRemovebgPreview9x11,
                                          height: 9.v,
                                          width: 11.h,
                                          alignment: Alignment.centerLeft),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Text("Trending Threads",
                                              style: theme.textTheme.bodyLarge))
                                    ]))
                          ])),
                      SizedBox(height: 22.v),
                      _buildForum(context),
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                          height: 37.v,
                          width: 186.h,
                          text: "Start a Conversation",
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: theme.textTheme.bodyLarge!,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 10.v),
                      Text("Showing 1-10 of 1,136 active Topics",
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 14.v),
                      _buildDataPrivacyAnd(context)
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
        title: AppbarTitle(text: "Community"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildForum(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.v),
        decoration: AppDecoration.outlineBlack9001,
        child: Row(children: [
          Text("Forum : ", style: theme.textTheme.titleLarge),
          Padding(
              padding: EdgeInsets.only(left: 6.h, top: 6.v),
              child: Text("Cybersecurity in modern world",
                  style: theme.textTheme.bodyMedium))
        ]));
  }

  /// Section Widget
  Widget _buildDataPrivacyAnd(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 5.v);
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return DataprivacyandItemWidget();
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

  /// Navigates to the iphone1314TwelveContainer1Screen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwelveContainer1Screen);
  }
}
