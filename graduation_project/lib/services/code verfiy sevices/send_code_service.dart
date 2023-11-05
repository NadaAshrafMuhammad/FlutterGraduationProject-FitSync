import '../../helper/api.dart';
import '../../helper/baseurl.dart';

class SendCodeService {
  Future<String> sendCodeVerfiy(String token) async {
    var data = await Api().get(
      url: '$baseUrl/api/user/sendCodeVerfiy',
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    // Will return successed message
    return data['message'];
  }
}