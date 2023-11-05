import '../helper/baseurl.dart';
import '../helper/api.dart';

class ChangeAvatarService {
  Future<String> changeAvatar({required String token, required String imagePath}) async {
    var data = await Api().patch(
      url: '$baseUrl/api/user/changeAvatar',
      body: {
        "avatar": imagePath,
      },
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type": "multipart/form-data; boundary=<calculated when request is sent>"
      },
    );

    // Will return the a message of success or fail
    return data['message'];
  }
}
