import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/io_client.dart';
import 'package:netmon_sumkal/helper/user_preference.dart';

import '../../../../helper/const.dart';
import '../../../../routes.dart';

class AppValueNotifier {
  ValueNotifier valueNotifier = ValueNotifier(true);
  void incrementNotifier() {
    valueNotifier.value = !valueNotifier.value;
  }
}

class HalamanLoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> tombolFormKey = GlobalKey<FormState>();
  var autoValidasi = 0.obs;
  var berhasilLogin = 0.obs;
  late TextEditingController emailController, passwordController;
  late AppValueNotifier appValueNotifier;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    appValueNotifier = AppValueNotifier();
    cekStatusJaringan();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  void cekStatusJaringan() async {
    bool trustSelfSigned = true;
    HttpClient httpClient = new HttpClient()
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) => trustSelfSigned);
    IOClient ioClient = new IOClient(httpClient);

    try {
      final response = await ioClient.get(Uri.parse(urlCekJaringan));
      return json.decode(response.body);
    } catch (e) {
      Get.snackbar(
        "maaf,",
        "koneksi ke server bermasalah",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red,
        borderRadius: 30,
        margin: EdgeInsets.all(10),
        maxWidth: 350,
        animationDuration: Duration(milliseconds: 3000),
      );
    }
  }

  String? validateEmail(String value) {
    if (value.length == 0) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      autoValidasi++;
      return;
    }
    loginFormKey.currentState!.save();
    callLoginService();
  }

  void callLoginService() async {
    berhasilLogin++;
    bool trustSelfSigned = true;
    HttpClient httpClient = new HttpClient()
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) => trustSelfSigned);
    IOClient ioClient = new IOClient(httpClient);

    try {
      var url = urlLoginAndroid;
      final response = await ioClient.post(Uri.parse(url), body: {
        "username": emailController.text,
        "password": passwordController.text
      });
      var datauser = json.decode(response.body);
      print(datauser);
      if (datauser['sukses'] == "5") {
        berhasilLogin--;
        Get.snackbar(
          "maaf,",
          "user atau password tidak terdaftar di LDAP",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red,
          borderRadius: 30,
          margin: EdgeInsets.all(10),
          maxWidth: 350,
          animationDuration: Duration(milliseconds: 3000),
        );
      } else if (datauser['sukses'] == "4") {
        berhasilLogin--;
        Get.snackbar(
          "maaf,",
          "user atau password anda salah",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red,
          borderRadius: 30,
          margin: EdgeInsets.all(10),
          maxWidth: 350,
          animationDuration: Duration(milliseconds: 3000),
        );
      } else if (datauser['sukses'] == "3") {
        berhasilLogin--;
        Get.snackbar(
          "user anda telah terdaftar,",
          "mohon tunggu admin untuk aktivasi",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red,
          borderRadius: 30,
          margin: EdgeInsets.all(10),
          maxWidth: 350,
          animationDuration: Duration(milliseconds: 3000),
        );
      } else if (datauser['sukses'] == "2") {
        berhasilLogin--;
        Get.snackbar(
          "maaf",
          "user anda belum diaktivasi",
          snackPosition: SnackPosition.BOTTOM,
          colorText: Colors.white,
          backgroundColor: Colors.red,
          borderRadius: 30,
          margin: EdgeInsets.all(10),
          maxWidth: 350,
          animationDuration: Duration(milliseconds: 3000),
        );
      } else if (datauser['sukses'] == "1") {
        berhasilLogin--;
        // setState(() {
        //   username = datauser['username'];
        //   nama = datauser['nama'];
        //   leveluser = datauser['level'];
        //   emailuser = datauser['email'];
        // });

        // _ensureLoggedIn();
        Map<String, dynamic> userCredential = new Map<String, dynamic>();
        userCredential = {
          "username": datauser['username'],
          "nama": datauser['nama'],
          "leveluser": datauser['level'],
          "emailuser": datauser['email']
        };
        UserPreference.setCredentialUser(userCredential);
        Get.offAllNamed(RouterGenerator.routeHome);
      }
    } catch (e) {
      berhasilLogin--;
      Get.snackbar(
        "maaf,",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        backgroundColor: Colors.red,
        borderRadius: 30,
        margin: EdgeInsets.all(10),
        maxWidth: 350,
        animationDuration: Duration(milliseconds: 3000),
      );
    }
  }
}
