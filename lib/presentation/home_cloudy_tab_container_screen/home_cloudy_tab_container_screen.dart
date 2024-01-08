import 'package:deteksi_cuaca/core/app_export.dart';
import 'package:deteksi_cuaca/presentation/home_cloudy_page/home_cloudy_page.dart';
import 'package:deteksi_cuaca/presentation/home_page/home_page.dart';
import 'package:deteksi_cuaca/presentation/home_rain_page/home_rain_page.dart';
import 'package:deteksi_cuaca/presentation/home_sunny_page/home_sunny_page.dart';
import 'package:deteksi_cuaca/presentation/home_sunrise_page/home_sunrise_page.dart';
import 'package:deteksi_cuaca/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomeCloudyTabContainerScreen extends StatefulWidget {
  const HomeCloudyTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeCloudyTabContainerScreenState createState() =>
      HomeCloudyTabContainerScreenState();
}

class HomeCloudyTabContainerScreenState
    extends State<HomeCloudyTabContainerScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 45.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 114.v,
                  width: 202.h,
                  margin: EdgeInsets.only(left: 24.h),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Find Your",
                          style: TextStyle(
                            color: appTheme.black900,
                            fontSize: 44.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "activity",
                          style: TextStyle(
                            color: appTheme.black900,
                            fontSize: 48.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  right: 17.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search",
                ),
              ),
              SizedBox(height: 28.v),
              Container(
                height: 34.v,
                width: 305.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.black900,
                  labelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.black900.withOpacity(0.53),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: appTheme.black900,
                  tabs: [
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            "All",
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            "Rain",
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "Sunny",
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Cloudy",
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Opacity(
                        opacity: 0.5,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Sunrise",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 557.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    HomePage(),
                    HomeRainPage(),
                    HomeSunnyPage(),
                    HomeCloudyPage(),
                    HomeSunrisePage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
