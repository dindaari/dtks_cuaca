import '../home_rain_page/widgets/viewhierarchy_item_widget.dart';
import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeRainPage extends StatefulWidget {
  const HomeRainPage({Key? key}) : super(key: key);

  @override
  HomeRainPageState createState() => HomeRainPageState();
}

class HomeRainPageState extends State<HomeRainPage>
    with AutomaticKeepAliveClientMixin<HomeRainPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Column(children: [
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h, right: 29.h),
                      child: Column(children: [
                        _buildViewHierarchy(context),
                        SizedBox(height: 36.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h, right: 15.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 39.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(top: 3.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVideoCamera,
                                                height: 39.v,
                                                width: 23.h,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVideoCamera,
                                                height: 39.v,
                                                width: 23.h,
                                                alignment: Alignment.center)
                                          ])),
                                  Spacer(flex: 35),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIcOutlineArticle,
                                      height: 27.v,
                                      width: 28.h,
                                      margin: EdgeInsets.only(bottom: 15.v),
                                      onTap: () {
                                        onTapImgIcOutlineArticle(context);
                                      }),
                                  Spacer(flex: 32),
                                  Container(
                                      height: 29.adaptSize,
                                      width: 29.adaptSize,
                                      margin: EdgeInsets.only(bottom: 14.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCamera,
                                                height: 29.adaptSize,
                                                width: 29.adaptSize,
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapImgCamera(context);
                                                }),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgCamera,
                                                height: 29.adaptSize,
                                                width: 29.adaptSize,
                                                alignment: Alignment.center)
                                          ])),
                                  Spacer(flex: 32),
                                  Container(
                                      height: 25.adaptSize,
                                      width: 25.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 3.v, bottom: 15.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgBiChatRightText,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize,
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapImgImage(context);
                                                }),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgBiChatRightText,
                                                height: 25.adaptSize,
                                                width: 25.adaptSize,
                                                alignment: Alignment.center)
                                          ]))
                                ]))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return ViewhierarchyItemWidget(onTapImgImage1: () {
            onTapImgImage1(context);
          });
        });
  }

  /// Navigates to the homeDetailScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeDetailScreen);
  }

  /// Navigates to the artikelScreen when the action is triggered.
  onTapImgIcOutlineArticle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.artikelScreen);
  }

  /// Navigates to the cameraScreen when the action is triggered.
  onTapImgCamera(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cameraScreen);
  }

  /// Navigates to the chatbotScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatbotScreen);
  }
}
