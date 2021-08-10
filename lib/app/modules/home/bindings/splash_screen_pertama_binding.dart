import 'package:get/get.dart';

import '../controllers/splash_screen_pertama_controller.dart';

class SplashScreenPertamaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenPertamaController>(
      () => SplashScreenPertamaController(),
    );
  }
}
