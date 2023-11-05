import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314SevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314EightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314NineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314TenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314ElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314SixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Twelve - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.iphone1314TwelveContainer1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314FifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314SeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314ThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          userName: "iPhone 13 & 14 - Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone1314FourteenScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
