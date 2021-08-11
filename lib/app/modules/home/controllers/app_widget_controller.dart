import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppWidgetController extends GetxController {
  double spacing(value) => value * 8.0;
  var namaGambar = 'ahad';
  var varHari = (DateFormat('EEEE').format(DateTime.now()));

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    if (varHari == 'Friday') {
      namaGambar = 'jumat';
    } else if (varHari == 'Saturday') {
      namaGambar = 'sabtu';
    } else if (varHari == 'Sunday') {
      namaGambar = 'ahad';
    } else if (varHari == 'Monday') {
      namaGambar = 'senin';
    } else if (varHari == 'Tuesday') {
      namaGambar = 'selasa';
    } else if (varHari == 'Wednesday') {
      namaGambar = 'rabu';
    } else if (varHari == 'Thursday') {
      namaGambar = 'kamis';
    }
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
