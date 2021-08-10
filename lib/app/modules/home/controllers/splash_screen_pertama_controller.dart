import 'dart:async';

import 'package:get/get.dart';
import 'package:netmon_sumkal/helper/user_preference.dart';

import '../../../../routes.dart';

class SplashScreenPertamaController extends GetxController {
  startSplashScreenPertama() {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Get.offNamed(RouterGenerator.routeLogin);
    });
  }
}
