import 'package:flutter/material.dart';

class AuthController {
  var _isAthentocated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAthentocated = true;
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      _isAthentocated = false;
      Navigator.pushReplacementNamed(context, "/login");
    }
  }
}
