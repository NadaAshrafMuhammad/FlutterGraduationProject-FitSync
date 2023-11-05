import '../helper/api.dart';

class SigninService {
  
  Future<String> userSignin({
    required String email, 
    required String password,
  }) async {

    var data = await Api().post(
      url: 'https://fitsync.onrender.com/api/user/login',
      body: {"email": email, "password": password},
      headers: {
        "Content-Type": "application/json"
      },
    );
    
    // Will return the token of the user if is not null else return message
    return data['token'] ?? data['message']; 
  }
}
