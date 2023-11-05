import '../../helper/api.dart';
import '../../helper/baseurl.dart';

class UpdatePassword {
  Future<String> updatePassword({
    required String oldPassword,
    required String password,
    required String passwordConf,
    required String token,
  }) async {
    var data = await Api().patch(
      url: '$baseUrl/api/user/updatePassword',
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