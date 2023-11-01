import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool passwordVisible = true;

  void togglePassword() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
