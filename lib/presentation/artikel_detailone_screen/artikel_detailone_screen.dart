import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:deteksi_cuaca/widgets/app_bar/appbar_leading_image.dart';
import 'package:deteksi_cuaca/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ArtikelDetailoneScreen extends StatelessWidget {
  const ArtikelDetailoneScreen({Key? key})
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
                    width: 319.h,
                    margin: EdgeInsets.only(right: 52.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Manfaat Sinar Matahari",
                            style: CustomTextStyles.titleLargeBold,
                          ),
                          TextSpan(
                            text: " untuk Kesehatan Tubuh",
                            style: CustomTextStyles.titleLargeBold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 42.v),
                  SizedBox(
                    width: 371.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Paparan sinar matahari secara intens dalam waktu lama memang bisa menimbulkan masalah pada kulit. Namun, sinar matahari hari juga memiliki banyak manfaat bagi tubuh, antara lain:\n1. Merangsang pembentukan ",
                            style: CustomTextStyles.titleMediumRoboto.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "vitamin D\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Vitamin D yang kamu dapatkan dari sinar matahari memainkan peran penting dalam kesehatan ",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "tulang",
                            style: theme.textTheme.titleSmall!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text:
                                ". Apabila kebutuhannya tidak terpenuhi, tubuh akan rentan mengalami kondisi pengeroposan tulang, termasuk rakitis, osteoporosis dan osteomalasia.\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "2. Menjaga kesehatan mental\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Faktanya, sinar matahari meningkatkan produksi serotonin. Hormon ini membantu meningkatkan energi dan suasana hati. Manfaatnya, kamu bisa terhindar dari masalah mental, seperti seasonal affective disorder dan depresi.\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "3. Mendukung Pengobatan Vitiligo\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Vitiligo adalah gangguan kesehatan kulit yang mengakibatkan warna kulit terlihat belang. Kondisi ini terjadi karena kurangnya melanin atau pigmen kulit. Meski vitiligo tidak bisa sembuh, kamu bisa melakukan tindakan pencegahan sehingga gejalanya tak memburuk, seperti melalui terapi obat dan sinar UV.\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "4. Mengurangi Gejala Psoriasis\n",
                            style: CustomTextStyles.titleMediumRoboto,
                          ),
                          TextSpan(
                            text:
                                "Sinar matahari juga menjadi terapi yang efektif untuk mengurangi tingkat keparahan gejala psoriasis. Ini adalah gangguan kulit karena masalah autoimun. Pengidap psoriasis bisa mengalami kulit kering, mudah mengelupas, dan bersisik. Selain itu, pengidap juga biasanya mudah mengalami gatal-gatal dan ketombe pada kepala.\n\n",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: "\n5. Menunjang Pengobatan Lupus Vulgaris\n",
                            style: CustomTextStyles.titleMediumRoboto.copyWith(
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text:
                                "Lupus vulgaris atau tuberkulosis kulit dapat berujung pada borok berukuran besar pada area leher dan wajah. Biasanya, dokter akan meresepkan obat antituberkulosis dan terapi sinar matahari UVB.\n\n",
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
