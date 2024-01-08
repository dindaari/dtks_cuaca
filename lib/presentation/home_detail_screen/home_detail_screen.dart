import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:deteksi_cuaca/widgets/app_bar/appbar_leading_image.dart';
import 'package:deteksi_cuaca/widgets/app_bar/custom_app_bar.dart';
import 'package:deteksi_cuaca/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 430.h,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSwimming(context),
              SizedBox(height: 27.v),
              Text(
                "Overview",
                style: TextStyle(
                  color: appTheme.gray900,
                  fontSize: 22.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.only(right: 128.h),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClock,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 5.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "1 hours",
                        style: TextStyle(
                          color: appTheme.gray60001,
                          fontSize: 18.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 82.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIconCloud,
                            ),
                          ),
                          Container(
                            height: 24.v,
                            width: 42.h,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 6.v,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "20 ",
                                          style: CustomTextStyles
                                              .titleLargeRobotoGray60001,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                        TextSpan(
                                          text: "C",
                                          style: CustomTextStyles
                                              .titleMediumRobotoGray6000118,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 12.h),
                                    child: Text(
                                      "o",
                                      style: TextStyle(
                                        color: appTheme.gray60001,
                                        fontSize: 10.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.v),
              SizedBox(
                width: 374.h,
                child: Text(
                  "Beberapa penelitian menyatakan bahwa waktu ideal renang setiap individu minimal 30 hingga 90 menit. Melakukan kegiatan ini pun tidak setiap hari. Cukup 2 atau 3 kali sehari saja. Untuk mencapai kesegaran relaksasi, direkomendasikan untuk berenang dalam rentang waktu pukul 07:00 - 09.00 WIB",
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: appTheme.gray700,
                    fontSize: 18.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 429.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.fromLTRB(32.h, 28.v, 371.h, 27.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildSwimming(BuildContext context) {
    return SizedBox(
      height: 221.v,
      width: 370.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4198x341,
            height: 221.v,
            width: 370.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 168.v),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      "Swimming",
                      style: TextStyle(
                        color: appTheme.black900,
                        fontSize: 18.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgFluentWeather,
                    height: 22.v,
                    width: 21.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      right: 16.h,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "20 C",
                      style: TextStyle(
                        color: appTheme.black900,
                        fontSize: 17.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
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
