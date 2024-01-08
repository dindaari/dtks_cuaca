import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:deteksi_cuaca/widgets/app_bar/appbar_leading_image.dart';
import 'package:deteksi_cuaca/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ArtikelDetailtwoScreen extends StatelessWidget {
  const ArtikelDetailtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 1.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 28.h,
                right: 30.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 275.h,
                    margin: EdgeInsets.only(right: 96.h),
                    child: Text(
                      "Efek Samping Negatif dari Paparan Sinar Matahari",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: appTheme.gray900,
                        fontSize: 22.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Ditinjau oleh dr. Rizal Fadli 18 September 2023",
                    style: TextStyle(
                      color: appTheme.gray700,
                      fontSize: 14.fSize,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  SizedBox(
                    width: 371.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Meski memberikan banyak manfaat, paparan sinar matahari berlebihan dapat merusak serat kolagen dan elastin (lapisan dermis) pada kulit. Kondisi ini bisa berujung pada beberapa efek samping berikut:\n1. Kerusakan Kulit\n",
                            style: CustomTextStyles.titleMediumRoboto.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text:
                                "Studi berjudul Natural and sun-induced aging of human skin yang dipublikasikan dalam Cold Spring Harbor Perspectives in Medicine menemukan, paparan sinar UV memberikan dampak pada penurunan struktur dan fungsi kulit.\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "2. Risiko Kanker Kulit\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Penelitian Sunlight and skin cancer yang dipublikasikan dalam Hindawi menemukan, paparan kronis terhadap radiasi ultraviolet (UV) di bawah sinar matahari berpotensi menyebabkan kanker kulit nonmelanoma pada manusia.\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "3. Kulit Terbakar\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Bahaya lainnya, yakni kulit terbakar. Kondisi ini populer dengan istilah sunburn. Warna kulit saat terbakar akan tampak kemerahan, bahkan kecoklatan. Tak hanya itu, kulit jadi terasa perih saat tersentuh. \nHal itu berpotensi memicu reaksi inflamasi yang juga menjadi risiko kanker dan penuaan dini.\n",
                            style: theme.textTheme.titleSmall!.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "4. Melasma\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Melasma terbentuk akibat kelainan pigmentasi akibat paparan sinar UV dalam jangka panjang. Gangguan kesehatan ini muncul dengan gejala berupa bercak coklat atau abu-abu pada permukaan kulit. \n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "5. Cedera pada Mata\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Terpapar sinar matahari juga bisa memicu terjadinya cedera mata. Pasalnya, sinar UV bisa menyebabkan kerusakan kornea mata yang berujung pada penglihatan menjadi buram. ",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
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
}
