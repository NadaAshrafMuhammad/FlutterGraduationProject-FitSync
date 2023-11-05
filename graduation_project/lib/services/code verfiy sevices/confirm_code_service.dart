import '../../helper/api.dart';
import '../../helper/baseurl.dart';

class ConfirmCodeService {
  Future<String> confirmCodeVerfiy(String token, String code) async {
    var data = await Api().post(
      url: '$baseUrl/api/user/verfiy',
      body: {
        "code": code,
      },
      headers: {
        "Authorization": "Bearer $token",
      },
    );
    
    // Will return token if it not empty else will return messge
    return data['token'] ?? data['message'];
  }
}