import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: PageView(
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          children: controller.listWidgets,
          controller: controller.pageController,
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            padding: EdgeInsets.only(left: 100),
            content: Text('Tap back again to leave'),
          ),
          child: ConvexAppBar(
            style: TabStyle.react,
            items: [
              TabItem(icon: Icons.list),
              TabItem(icon: Icons.calendar_today),
              TabItem(icon: Icons.assessment),
              TabItem(icon: Icons.safety_divider),
            ],
            initialActiveIndex: controller.currentIndex.value,
            key: controller.bottomNavigationKey,
            onTap: (position) {
              controller.currentIndex.value = position;
              controller.pageController.jumpToPage(position);
            },
          ),
        ),
      ),
    );
  }
}
