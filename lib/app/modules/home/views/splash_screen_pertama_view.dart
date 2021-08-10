import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_pertama_controller.dart';

class SplashScreenPertamaView extends GetView<SplashScreenPertamaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashScreenPertamaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplashScreenPertamaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
