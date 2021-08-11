import 'package:get/get.dart';

import '../controllers/page_satu_atas_controller.dart';

class PageSatuAtasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageSatuAtasController>(
      () => PageSatuAtasController(),
    );
  }
}
