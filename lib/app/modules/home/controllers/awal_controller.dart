import 'package:get/get.dart';
import 'package:netmon_sumkal/helper/user_preference.dart';
import '../../../../routes.dart';

class AwalController extends GetxController {
  var sudahLogin = 0.obs;
  pilihSplashScreen() async {
    UserPreference.getCredentialUser().then((value) {
      if (value["username"] == null) {
        Get.offNamed(RouterGenerator.routeSplashPertama);
      } else {
        Get.offNamed(RouterGenerator.routeSplashKedua);
        sudahLogin++;
      }
    });
  }
}
