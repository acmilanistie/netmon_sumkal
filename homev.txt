import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            // title: Text('Kondisi Jaringan Reg SUMKAL'),
            title: Text(controller.sisaSession.toString()),
            actions: [
              IconButton(
                  onPressed: () {
                    // _buildAddEdit(text: 'Add', addEditFlag: 1, docId: '');
                  },
                  icon: Icon(Icons.add))
            ],
          ),
          body: ListView.builder(
            itemCount: controller.units.length,
            itemBuilder: (context, index) => Card(
              child: Text(controller.units[index].latit!.toString()),
            ),
          ),
        ));
  }
}
