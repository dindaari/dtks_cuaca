import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(-0.27, 0.46),
              end: Alignment(0.86, -0.68),
              colors: [
                appTheme.whiteA700,
                appTheme.amber300,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4,
                  height: 196.v,
                  width: 373.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
