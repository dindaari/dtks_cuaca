import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget({
    Key? key,
    this.onTapImgImage1,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgImage1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198.v,
      width: 341.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4198x341,
            height: 198.v,
            width: 341.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgImage1!.call();
            },
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 198.v,
              width: 341.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(top: 151.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.h,
                        vertical: 6.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL20,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 6.v),
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
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              top: 6.v,
                              bottom: 7.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(3.h, 3.v, 13.h, 3.v),
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
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 198.v,
                      width: 341.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4198x341,
                            height: 198.v,
                            width: 341.h,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.only(top: 151.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 6.v),
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
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 6.v,
                                      bottom: 7.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        3.h, 3.v, 13.h, 3.v),
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
