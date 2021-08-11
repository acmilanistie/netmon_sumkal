import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:netmon_sumkal/helper/user_preference.dart';
import '/app/models/firebase_unit_model.dart';
import '/app/routes/app_pages.dart';

class HomeController extends GetxController {
  RxList<FirebaseUnitModel> units = RxList<FirebaseUnitModel>([]);
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  var sisaSession = 0;
  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection('units');
    units.bindStream(getUnitFireStore());
    cekTanggalPref();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}

  Stream<List<FirebaseUnitModel>> getUnitFireStore() => collectionReference
      .where('aktif', isEqualTo: '1')
      .snapshots()
      .map((query) =>
          query.docs.map((item) => FirebaseUnitModel.fromMap(item)).toList());

  cekTanggalPref() async {
    UserPreference.getCredentialUser().then((value) {
      // var tanggalLogin = DateTime.parse(value["tgl_login"]);
      var tanggalLogin = DateTime.parse('2021-08-09 17:01:23.474241');
      var tanggalSekarang = DateTime.now();
      var selisihTanggal = tanggalSekarang.difference(tanggalLogin).inDays;
      sisaSession = 30 - selisihTanggal;
      update();
    });
  }
}
