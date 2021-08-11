import 'package:get/get.dart';

import '../controllers/app_widget_controller.dart';

class AppWidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppWidgetController>(
      () => AppWidgetController(),
    );
  }
}
