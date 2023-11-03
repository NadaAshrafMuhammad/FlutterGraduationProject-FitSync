import '../helper/api.dart';

class SigninService {
  
  Future<dynamic> userSignin({
    required String email, 
    required String password,
  }) async {

    var data = await Api().post(
      url: '', // add url here
      body: {"email": email, "password": password},
      headers: null,
    );

    return data;
  }
}
