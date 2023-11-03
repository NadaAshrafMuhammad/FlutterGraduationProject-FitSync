import '../helper/api.dart';

class RegisterService {

  Future<dynamic> userRegisteration({
    required String username,
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    var data = await Api().post(
      url: '', // add url
      body: {
        "username": username,
        "email": email,
        "password": password,
        "passwordConfirm": passwordConfirm
      },
      headers: null,
    );

    return data;
  }
}
