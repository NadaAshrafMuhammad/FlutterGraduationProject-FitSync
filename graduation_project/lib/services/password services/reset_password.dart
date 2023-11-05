import '../../helper/api.dart';
import '../../helper/baseurl.dart';

class ResetPassword {
  Future<String> resetPassword(
      String password, String passwordConf, String token) async {
    var data = await Api().post(
      url: '$baseUrl/api/user/resetPassword',
      body: {
        "password": password,
        "passwordConfirm": passwordConf,
      },
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "application/json",
      },
    );

    // Will return token if it not null else will return message
    return data['token'] ?? data['message'];
  }
}