import '../../helper/api.dart';
import '../../helper/baseurl.dart';

class ForgetPassword {
  Future<String> forgetPassword(String email) async {
    var data = await Api().post(
      url: '$baseUrl/api/user/forgetPassword',
      body: {"email": email},
      headers: {"Content-Type": "application/json"},
    );

    // Will return string message of success
    return data['message'];
  }
}