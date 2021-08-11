import 'package:shared_preferences/shared_preferences.dart';

class UserPreference {
  String sessionName = "user_crendential";

  ///fungsi untuk menyimpan user session untuk nama email dan token untuk request api
  static Future<void> setCredentialUser(Map<String, dynamic> data) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("username", data["username"]);
    preferences.setString("nama", data["nama"]);
    preferences.setString("leveluser", data["leveluser"]);
    preferences.setString("emailuser", data["emailuser"]);
    preferences.setString("tgl_login", DateTime.now().toString());
  }

  static Future<void> deleteCredentiallUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  //fungsi uuntuk mendapatkan user session dalam bentuk data map
  static Future<Map<String, dynamic>> getCredentialUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Map<String, dynamic> userCredential = {
      "username": preferences.getString("username"),
      "nama": preferences.getString("nama"),
      "leveluser": preferences.getString("leveluser"),
      "emailuser": preferences.getString("emailuser"),
      "tgl_login": preferences.getString("tgl_login"),
    };
    return userCredential;
  }
}
