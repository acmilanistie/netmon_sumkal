import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/awal_controller.dart';

class AwalView extends GetView<AwalController> {
  @override
  Widget build(BuildContext context) {
    controller.pilihSplashScreen();
    return Scaffold(
      backgroundColor: controller.sudahLogin > 0 ? Colors.white : Colors.black,
    );
  }
}
