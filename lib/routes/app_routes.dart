import 'package:flutter/material.dart';
import 'package:deteksi_cuaca/presentation/splash_screen/splash_screen.dart';
import 'package:deteksi_cuaca/presentation/beranda_screen/beranda_screen.dart';
import 'package:deteksi_cuaca/presentation/camera_screen/camera_screen.dart';
import 'package:deteksi_cuaca/presentation/chatbot_screen/chatbot_screen.dart';
import 'package:deteksi_cuaca/presentation/home_detail_screen/home_detail_screen.dart';
import 'package:deteksi_cuaca/presentation/home_detail_two_screen/home_detail_two_screen.dart';
import 'package:deteksi_cuaca/presentation/home_cloudy_tab_container_screen/home_cloudy_tab_container_screen.dart';
import 'package:deteksi_cuaca/presentation/artikel_screen/artikel_screen.dart';
import 'package:deteksi_cuaca/presentation/artikel_detailone_screen/artikel_detailone_screen.dart';
import 'package:deteksi_cuaca/presentation/artikel_detailtwo_screen/artikel_detailtwo_screen.dart';
import 'package:deteksi_cuaca/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String berandaScreen = '/beranda_screen';

  static const String homePage = '/home_page';

  static const String cameraScreen = '/camera_screen';

  static const String chatbotScreen = '/chatbot_screen';

  static const String homeDetailScreen = '/home_detail_screen';

  static const String homeDetailTwoScreen = '/home_detail_two_screen';

  static const String homeRainPage = '/home_rain_page';

  static const String homeSunnyPage = '/home_sunny_page';

  static const String homeCloudyPage = '/home_cloudy_page';

  static const String homeCloudyTabContainerScreen =
      '/home_cloudy_tab_container_screen';

  static const String homeSunrisePage = '/home_sunrise_page';

  static const String artikelScreen = '/artikel_screen';

  static const String artikelDetailoneScreen = '/artikel_detailone_screen';

  static const String artikelDetailtwoScreen = '/artikel_detailtwo_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    berandaScreen: (context) => BerandaScreen(),
    cameraScreen: (context) => CameraScreen(),
    chatbotScreen: (context) => ChatbotScreen(),
    homeDetailScreen: (context) => HomeDetailScreen(),
    homeDetailTwoScreen: (context) => HomeDetailTwoScreen(),
    homeCloudyTabContainerScreen: (context) => HomeCloudyTabContainerScreen(),
    artikelScreen: (context) => ArtikelScreen(),
    artikelDetailoneScreen: (context) => ArtikelDetailoneScreen(),
    artikelDetailtwoScreen: (context) => ArtikelDetailtwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
