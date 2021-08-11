import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:netmon_sumkal/app/modules/home/controllers/app_widget_controller.dart';
import 'package:netmon_sumkal/app/modules/home/controllers/page_satu_atas_controller.dart';
import 'package:netmon_sumkal/app/modules/home/views/app_widget_view.dart';
import '/app/modules/home/views/page_satu_atas_view.dart';

import '../controllers/page_satu_bawah_controller.dart';

class PageSatuBawahView extends GetView<PageSatuBawahController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AppWidgetController());
    Get.lazyPut(() => PageSatuAtasController());
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            AppWidgetView(),
            SingleChildScrollView(
              child: PageSatuAtasView(),
            )
          ],
        ),
      ),
    );
  }
}
