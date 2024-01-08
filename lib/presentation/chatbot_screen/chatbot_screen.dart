import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

class ChatbotScreen extends StatelessWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 28.v),
                child: Column(children: [
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup256,
                                height: 24.v,
                                width: 23.h,
                                margin: EdgeInsets.only(bottom: 4.v)),
                            Spacer(flex: 35),
                            CustomImageView(
                                imagePath: ImageConstant.imgIcOutlineArticle,
                                height: 27.v,
                                width: 28.h,
                                margin: EdgeInsets.only(bottom: 3.v),
                                onTap: () {
                                  onTapImgIcOutlineArticle(context);
                                }),
                            Spacer(flex: 31),
                            CustomImageView(
                                imagePath: ImageConstant.imgCamera,
                                height: 29.adaptSize,
                                width: 29.adaptSize,
                                onTap: () {
                                  onTapImgCamera(context);
                                }),
                            Spacer(flex: 32),
                            CustomImageView(
                                imagePath: ImageConstant.imgBiChatRightTextFill,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(top: 5.v))
                          ])),
                  SizedBox(height: 4.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(right: 9.h),
                          decoration: BoxDecoration(
                              color: appTheme.redA200,
                              borderRadius: BorderRadius.circular(4.h))))
                ]))));
  }

  /// Navigates to the homeDetailScreen when the action is triggered.
  onTapImgSwimmingImage(BuildContext context) {
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
}
