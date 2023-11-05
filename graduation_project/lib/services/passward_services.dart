import '../helper/api.dart';

class PasswordServices {
  Future<String> forgetPassword(String email) async {
    var data = await Api().post(
      url: 'https://fitsync.onrender.com/api/user/forgetPassword',
      body: {"email": email},
      headers: {"Content-Type": "application/json"},
    );

    // Will return string message of success
    return data['message'];
  }

  Future<String> resetPassword(
      String password, String passwordConf, String token) async {
    var data = await Api().post(
      url: 'https://fitsync.onrender.com/api/user/resetPassword',
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

  Future<String> updatePassword({
    required String oldPassword,
    required String password,
    required String passwordConf,
    required String token,
  }) async {
    var data = await Api().patch(
      url: 'https://fitsync.onrender.com/api/user/updatePassword',
      body: {
        "oldPassword": oldPassword,
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
