import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kondisi Jaringan Reg SUMKAL'),
        actions: [
          IconButton(
              onPressed: () {
                // _buildAddEdit(text: 'Add', addEditFlag: 1, docId: '');
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.units.length,
            itemBuilder: (context, index) => Card(
              child: Text(controller.units[index].latit!.toString()),
            ),
          )),
    );
  }
}
