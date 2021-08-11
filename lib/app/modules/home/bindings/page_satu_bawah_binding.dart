import 'package:get/get.dart';

import '../controllers/page_satu_bawah_controller.dart';

class PageSatuBawahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageSatuBawahController>(
      () => PageSatuBawahController(),
    );
  }
}
