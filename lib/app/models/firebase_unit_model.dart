import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUnitModel {
  String? docId;
  String? aktif;
  String? latit;
  String? longit;
  String? status;
  String? nama_unit;
  String? update_on;

  FirebaseUnitModel(
      {this.docId,
      this.aktif,
      this.latit,
      this.longit,
      this.status,
      this.nama_unit,
      this.update_on});

  FirebaseUnitModel.fromMap(DocumentSnapshot data) {
    docId = data.id;
    aktif = data['aktif'];
    latit = data['latit'];
    longit = data['longit'];
    status = data['status'];
    nama_unit = data['nama_unit'];
    update_on = data['update_on'];
  }
}
