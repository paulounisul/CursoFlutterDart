import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/exceptions/auth_exception.dart';

class Auth with ChangeNotifier {
  static const _url =
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBtnVln0XA73C1YspKYyPcECOuUnNL-u3U';

// https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=
// https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=

  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyBtnVln0XA73C1YspKYyPcECOuUnNL-u3U';
    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );

    final body = jsonDecode(response.body);
    print(jsonDecode(response.body));

    if (body['error'] != null) {
      print('Olaa ${body['error']['message']}');
      throw AuthException(body['error']['message']);
    }
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }
}
