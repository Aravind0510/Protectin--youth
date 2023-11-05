import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';

// ignore: must_be_immutable
class DataprivacyandItemWidget extends StatelessWidget {
  const DataprivacyandItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillGray20002,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIcbaselineemail,
            height: 37.v,
            width: 49.h,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 20.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 2.h,
                top: 11.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30.h),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "Data Privacy and Protection",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMenu,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 20.h,
                            top: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "5",
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Text(
                            "Dj LIS",
                            style: CustomTextStyles.bodyLargeBlue70001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.v),
                          child: Text(
                            "14 Sep,2022 @12:16am",
                            style: CustomTextStyles.bodyLargeBlue70001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
