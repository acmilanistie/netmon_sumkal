import 'package:get/get.dart';

import 'package:netmon_sumkal/app/modules/home/bindings/awal_binding.dart';
import 'package:netmon_sumkal/app/modules/home/views/awal_view.dart';
import 'package:netmon_sumkal/app/modules/home/bindings/home_binding.dart';
import 'package:netmon_sumkal/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
  ];
}
