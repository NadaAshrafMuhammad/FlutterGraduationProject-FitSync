import '../helper/api.dart';

class CodeVerfiyService {
  Future<String> sendCodeVerfiy(String token) async {
    var data = await Api().get(
      url: 'https://fitsync.onrender.com/api/user/sendCodeVerfiy',
      headers: {
        "Authorization": "Bearer $token",
      },
    );

    // Will return successed message
    return data['message'];
  }

  Future<String> resetCodeVerfiy(String code) async {
    var data = await Api().post(
      url: 'https://fitsync.onrender.com/api/user/codeReset',
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

  Future<String> confirmCodeVerfiy(String token, String code) async {
    var data = await Api().post(
      url: 'https://fitsync.onrender.com/api/user/verfiy',
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
