import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_kedua_controller.dart';

class SplashScreenKeduaView extends GetView<SplashScreenKeduaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplashScreenKeduaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SplashScreenKeduaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
