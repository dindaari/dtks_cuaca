import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:deteksi_cuaca/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);

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
                        colors: [appTheme.whiteA700, appTheme.amber300])),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.h, vertical: 91.v),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(flex: 50),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4,
                              height: 196.v,
                              width: 373.h),
                          Spacer(flex: 49),
                          CustomElevatedButton(
                              width: 166.h,
                              text: "Start",
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientRedToWhiteADecoration,
                              onPressed: () {
                                onTapStart(context);
                              })
                        ])))));
  }

  /// Navigates to the homeTabContainerScreen when the action is triggered.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeCloudyTabContainerScreen);
  }
}
