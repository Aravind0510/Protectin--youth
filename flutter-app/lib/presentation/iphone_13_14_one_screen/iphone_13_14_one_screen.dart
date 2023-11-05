import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/widgets/custom_elevated_button.dart';

class Iphone1314OneScreen extends StatelessWidget {
  const Iphone1314OneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      appTheme.cyan100,
                      theme.colorScheme.secondaryContainer
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 34.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImageRemovebgPreview,
                              height: 266.v,
                              width: 233.h),
                          SizedBox(height: 25.v),
                          Text("Youth: Hope, Support, Heal.",
                              style: CustomTextStyles.headlineSmallGray100),
                          SizedBox(height: 59.v),
                          CustomElevatedButton(
                              width: 145.h,
                              text: "Get Started",
                              buttonStyle: CustomButtonStyles.fillWhiteA,
                              buttonTextStyle: theme.textTheme.titleMedium!,
                              onPressed: () {
                                onTapGetStarted(context);
                              }),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Navigates to the iphone1314TwoScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314TwoScreen);
  }
}
