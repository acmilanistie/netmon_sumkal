import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/awal_controller.dart';

// ignore: must_be_immutable
class AwalView extends GetView<AwalController> {
  AwalController controller = Get.find<AwalController>();
  @override
  Widget build(BuildContext context) {
    controller.pilihSplashScreen();
    return Scaffold(
      backgroundColor: controller.sudahLogin > 0 ? Colors.white : Colors.black,
    );
  }
}
