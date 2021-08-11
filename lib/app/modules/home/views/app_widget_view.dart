import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/app_widget_controller.dart';

class AppWidgetView extends GetView<AppWidgetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(375),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: 375,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.blueAccent],
                begin: Alignment(-1.0, -1.0),
                end: Alignment(1.0, 1.0),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: controller.spacing(7.5),
                  left: controller.spacing(2.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'Net-',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Mon',
                              style: TextStyle(color: Colors.red[300]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: controller.spacing(3)),
                      headingTextMedium(
                          text: 'Lawan\nCOVID-19',
                          color: Colors.white,
                          fontWeight: FontWeight.w700)
                    ],
                  ),
                ),
                // AngkaGangguanHariIni(),
                Positioned(
                  top: 35,
                  right: controller.spacing(3),
                  child: Lottie.asset(
                      'assets/images/' + controller.namaGambar + '.json',
                      height: 200),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget headingTextMedium(
    {required String text,
    required Color color,
    TextAlign textAlign = TextAlign.left,
    FontWeight fontWeight = FontWeight.w500}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: 24.0,
      fontWeight: fontWeight,
    ),
    textAlign: textAlign,
  );
}
