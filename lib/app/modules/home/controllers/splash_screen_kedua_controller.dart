import 'dart:async';

import 'package:get/get.dart';

import '../../../../routes.dart';

class SplashScreenKeduaController extends GetxController {
  startSplashScreenKedua() {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offNamed(RouterGenerator.routeHome);
    });
  }
}
