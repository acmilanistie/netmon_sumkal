import 'package:get/get.dart';
import 'package:netmon_sumkal/helper/user_preference.dart';

class PageSatuAtasController extends GetxController {
  //TODO: Implement PageSatuAtasController

  final count = 0.obs;
  var namaUser = '';
  @override
  void onInit() {
    super.onInit();
    cekNamaUserPref();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  cekNamaUserPref() async {
    UserPreference.getCredentialUser().then((value) {
      namaUser = value["nama"];
      update();
    });
  }
}
