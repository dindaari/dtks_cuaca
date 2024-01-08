import '../artikel_screen/widgets/workshopregistration_item_widget.dart';
import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:deteksi_cuaca/widgets/app_bar/appbar_title.dart';
import 'package:deteksi_cuaca/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ArtikelScreen extends StatelessWidget {
  const ArtikelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 19.v),
                child: Column(children: [
                  _buildWorkshopRegistration(context),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.h),
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
                                imagePath: ImageConstant.imgMdiClock,
                                height: 27.v,
                                width: 28.h,
                                margin: EdgeInsets.only(bottom: 2.v)),
                            Spacer(flex: 32),
                            CustomImageView(
                                imagePath: ImageConstant.imgCamera,
                                height: 29.adaptSize,
                                width: 29.adaptSize,
                                onTap: () {
                                  onTapImgCamera(context);
                                }),
                            Spacer(flex: 32),
                            CustomImageView(
                                imagePath: ImageConstant.imgBiChatRightText,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(top: 5.v),
                                onTap: () {
                                  onTapImgImage(context);
                                })
                          ])),
                  SizedBox(height: 4.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(left: 121.h),
                          decoration: BoxDecoration(
                              color: appTheme.redA200,
                              borderRadius: BorderRadius.circular(4.h)))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 70.v,
        centerTitle: true,
        title: AppbarTitle(text: "ARTIKEL"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildWorkshopRegistration(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, bottom: 35),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return WorkshopregistrationItemWidget(
                  onTapWorkshopRegistration: () {
                onTapWorkshopRegistration(context);
              });
            }));
  }

  /// Navigates to the homeDetailScreen when the action is triggered.
  onTapImgGroup256(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeCloudyTabContainerScreen);
  }

  /// Navigates to the artikelDetailoneScreen when the action is triggered.
  onTapWorkshopRegistration(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.artikelDetailoneScreen);
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
