import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/app/modules/home/views/page_satu_bawah_view.dart';

class HomeController extends GetxController {
  List<Widget> listWidgets = [
    PageSatuBawahView(),
    Text('2'),
    Text('3'),
    Text('4'),
  ];
  var currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();
  late PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
  }
}
