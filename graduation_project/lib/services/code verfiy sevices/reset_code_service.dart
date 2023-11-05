import '../../helper/api.dart';
import '../../helper/baseurl.dart';

class ResetCodeService {
  Future<String> resetCodeVerfiy(String code) async {
    var data = await Api().post(
      url: '$baseUrl/api/user/codeReset',
      body: {
        "code": code,
      },
      headers: {
        "Content-Type": "application/json",
      },
    );

    // Will return invalid code message
    return data['message'];
  }
}