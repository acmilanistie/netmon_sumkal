import 'package:get/get.dart';

import '../controllers/awal_controller.dart';

class AwalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AwalController>(
      () => AwalController(),
    );
  }
}
