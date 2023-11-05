import '../iphone_13_14_twelve_container_page/widgets/topiclist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:safetycompass/core/app_export.dart';
import 'package:safetycompass/widgets/app_bar/appbar_leading_image.dart';
import 'package:safetycompass/widgets/app_bar/appbar_title.dart';
import 'package:safetycompass/widgets/app_bar/custom_app_bar.dart';
import 'package:safetycompass/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class Iphone1314TwelveContainerPage extends StatelessWidget {
  Iphone1314TwelveContainerPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 38.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(left: 33.h, right: 36.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search")),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Text("Trending Forum",
                                      style:
                                          CustomTextStyles.titleLargeBold_1))),
                          SizedBox(height: 18.v),
                          _buildTopicList(context),
                          SizedBox(height: 38.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle51,
                              height: 59.v,
                              width: 388.h)
                        ]))))));
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
  Widget _buildTopicList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 12.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 7.v);
            },
            itemCount: 9,
            itemBuilder: (context, index) {
              return TopiclistItemWidget();
            }));
  }

  /// Navigates to the iphone1314SevenScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1314SevenScreen);
  }
}
