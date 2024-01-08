import '../home_page/widgets/swimmingcomponent_item_widget.dart';
import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
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
                        _buildSwimmingComponent(context),
                        SizedBox(height: 36.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h, right: 15.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgVideoCamera,
                                      height: 39.v,
                                      width: 23.h,
                                      margin: EdgeInsets.only(top: 3.v)),
                                  Spacer(flex: 35),
                                  Container(
                                      height: 27.v,
                                      width: 28.h,
                                      margin: EdgeInsets.only(bottom: 15.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIcOutlineArticle,
                                                height: 27.v,
                                                width: 28.h,
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapImgIcOutlineArticle(
                                                      context);
                                                }),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgIcOutlineArticle,
                                                height: 27.v,
                                                width: 28.h,
                                                alignment: Alignment.center)
                                          ])),
                                  Spacer(flex: 32),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCamera,
                                      height: 29.adaptSize,
                                      width: 29.adaptSize,
                                      margin: EdgeInsets.only(bottom: 14.v),
                                      onTap: () {
                                        onTapImgCamera(context);
                                      }),
                                  Spacer(flex: 32),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgBiChatRightText,
                                      height: 25.adaptSize,
                                      width: 25.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 3.v, bottom: 15.v),
                                      onTap: () {
                                        onTapImgImage(context);
                                      })
                                ]))
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildSwimmingComponent(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SwimmingcomponentItemWidget(onTapImgSwimmingImage: () {
            onTapImgSwimmingImage(context);
          });
        });
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

  /// Navigates to the chatbotScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatbotScreen);
  }
}
