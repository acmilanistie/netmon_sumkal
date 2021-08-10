import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '/app/models/firebase_unit_model.dart';
import '/app/routes/app_pages.dart';

class HomeController extends GetxController {
  RxList<FirebaseUnitModel> units = RxList<FirebaseUnitModel>([]);
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection('units');
    units.bindStream(getUnitFireStore());
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
}
