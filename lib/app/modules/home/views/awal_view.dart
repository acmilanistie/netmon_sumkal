import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/awal_controller.dart';

class AwalView extends GetView<AwalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AwalView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AwalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
