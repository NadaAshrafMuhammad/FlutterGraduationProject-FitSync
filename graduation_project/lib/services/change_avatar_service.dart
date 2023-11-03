import '../helper/api.dart';

class ChangeAvatarService {
  void changeAvatar(String token, String imagePath) async {
    var data = await Api().patch(
      url: 'https://fitsync.onrender.com/api/user/changeAvatar',
      body: {
        "avatar": imagePath,
      },
      headers: {
        "Authorization": "Bearer $token",
        "Content-Type":
            "multipart/form-data; boundary=<calculated when request is sent>"
      },
    );
    
    // not sure TODO ask what will return
    return data;
  }
}
