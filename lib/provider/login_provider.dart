import 'package:flutter/material.dart';

class PasswordProvider with ChangeNotifier {
  bool passwordVisible = false;

  void togglePassword() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
