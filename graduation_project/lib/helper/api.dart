import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  // Is get method to recieve response from the api
  Future<dynamic> get({
    required String url, 
    @required dynamic headers, // optional parameter
  }) async {
    try {
      http.Response response = await http.get(Uri.parse(url), headers: headers);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        // if the statusCode not equal 200 then show me the error messsage
        throw Exception(
            'The statusCode: ${response.statusCode} with Error ${response.body}');
      }
    } catch (error) {
      // if there problem in api itself this will show
      throw Exception('There Is An Error Which Is: $error');
    }
  }

  // Is post method to send request and recieve response from the api
  Future<dynamic> post({
    required String url,
    required Map<String, dynamic> body,
    @required dynamic headers, // optional parameter
  }) async {
    try {
      http.Response response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        // if the statusCode not equal 200 then show me the error messsage
        throw Exception(
            'The statusCode: ${response.statusCode} with Error ${response.body}');
      }
    } catch (error) {
      // if there problem in api itself this will show
      throw Exception('There Is An Error Which Is: $error');
    }
  }

  // Is patch method to send request for update the data in database and recieve response from the api
  Future<dynamic> patch({
    required String url,
    required Map<String, dynamic> body,
    @required dynamic headers, // optional parameter
  }) async {
    try {
      http.Response response = await http.patch(
        Uri.parse(url),
        headers: headers,
        body: jsonEncode(body),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        // if the statusCode not equal 200 then show me the error messsage
        throw Exception(
            'The statusCode: ${response.statusCode} with Error ${response.body}');
      }
    } catch (error) {
      // if there problem in api itself this will show
      throw Exception('There Is An Error Which Is: $error');
    }
  }
}
