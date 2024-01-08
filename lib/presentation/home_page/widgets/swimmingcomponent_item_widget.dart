import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SwimmingcomponentItemWidget extends StatelessWidget {
  SwimmingcomponentItemWidget({
    Key? key,
    this.onTapImgSwimmingImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgSwimmingImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            onTap: () {
              onTapImgSwimmingImage!.call();
            },
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
                borderRadius: BorderRadiusStyle.customBorderBL20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      right: 13.h,
                      bottom: 3.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFluentWeather,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
