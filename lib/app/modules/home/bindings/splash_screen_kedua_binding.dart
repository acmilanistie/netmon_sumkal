import 'package:get/get.dart';

import '../controllers/splash_screen_kedua_controller.dart';

class SplashScreenKeduaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenKeduaController>(
      () => SplashScreenKeduaController(),
    );
  }
}
