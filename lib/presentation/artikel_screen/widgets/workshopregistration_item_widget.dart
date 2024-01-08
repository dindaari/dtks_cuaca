import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorkshopregistrationItemWidget extends StatelessWidget {
  WorkshopregistrationItemWidget({
    Key? key,
    this.onTapWorkshopRegistration,
  }) : super(
          key: key,
        );

  VoidCallback? onTapWorkshopRegistration;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapWorkshopRegistration!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillGray500.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 6.v),
            Container(
              width: 200.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Text(
                "Manfaat Sinar Matahari untuk Kesehatan Tubuh",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: appTheme.gray90002,
                  fontSize: 14.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 1.v),
            Container(
              width: 296.h,
              margin: EdgeInsets.only(left: 9.h),
              child: Text(
                "Paparan sinar matahari secara intens dalam waktu lama memang bisa menimbulkan masalah...",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: appTheme.blueGray700,
                  fontSize: 13.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 2.v),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "1 years ago",
                style: TextStyle(
                  color: appTheme.blueGray300,
                  fontSize: 11.fSize,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
