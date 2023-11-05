import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../helper/api.dart';

class RegisterService {
  Future<Map<String, dynamic>> userRegisteration({
    required String username,
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    var data = await Api().post(
      url: 'https://fitsync.onrender.com/api/user/register',
      body: {
        "username": username,
        "email": email,
        "password": password,
        "passwordConfirm": passwordConfirm,
      },
      headers: {
        "Content-Type": "application/json"
      },
    );

    // Will assign the data of the user in userData
    UserModel userData = UserModel.fromJSON(data['user']);
    // Save all the data that we recieved
    final recievedData = {
      "userData": userData,
      "token": data['token'],
    };

    debugPrint('Recieved Data is: $recievedData');
    return recievedData;
  }
}
