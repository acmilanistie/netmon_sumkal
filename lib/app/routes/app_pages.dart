import 'package:get/get.dart';

import 'package:netmon_sumkal/app/modules/home/bindings/app_widget_binding.dart';
import 'package:netmon_sumkal/app/modules/home/views/app_widget_view.dart';
import 'package:netmon_sumkal/app/modules/home/bindings/halaman_login_binding.dart';
import 'package:netmon_sumkal/app/modules/home/bindings/page_satu_atas_binding.dart';
import 'package:netmon_sumkal/app/modules/home/bindings/page_satu_bawah_binding.dart';
import 'package:netmon_sumkal/app/modules/home/views/halaman_login_view.dart';
import 'package:netmon_sumkal/app/modules/home/views/page_satu_atas_view.dart';
import 'package:netmon_sumkal/app/modules/home/views/page_satu_bawah_view.dart';

import '/app/modules/home/bindings/awal_binding.dart';
import '/app/modules/home/bindings/home_binding.dart';
import '/app/modules/home/bindings/splash_screen_kedua_binding.dart';
import '/app/modules/home/bindings/splash_screen_pertama_binding.dart';
import '/app/modules/home/views/awal_view.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/home/views/splash_screen_kedua_view.dart';
import '/app/modules/home/views/splash_screen_pertama_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AWAL;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AWAL,
      page: () => AwalView(),
      binding: AwalBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_PERTAMA,
      page: () => SplashScreenPertamaView(),
      binding: SplashScreenPertamaBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_KEDUA,
      page: () => SplashScreenKeduaView(),
      binding: SplashScreenKeduaBinding(),
    ),
    GetPage(
      name: _Paths.HALAMAN_LOGIN,
      page: () => HalamanLoginView(),
      binding: HalamanLoginBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_SATU_BAWAH,
      page: () => PageSatuBawahView(),
      binding: PageSatuBawahBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_SATU_ATAS,
      page: () => PageSatuAtasView(),
      binding: PageSatuAtasBinding(),
    ),
    GetPage(
      name: _Paths.APP_WIDGET,
      page: () => AppWidgetView(),
      binding: AppWidgetBinding(),
    ),
  ];
}
