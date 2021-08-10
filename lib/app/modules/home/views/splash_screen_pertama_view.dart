import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_pertama_controller.dart';

class SplashScreenPertamaView extends GetView<SplashScreenPertamaController> {
  SplashScreenPertamaController controller =
      Get.find<SplashScreenPertamaController>();
  @override
  Widget build(BuildContext context) {
    controller.startSplashScreenPertama();
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            "Splash ke Login",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'),
          ),
        ),
      ),
    );
  }
}
