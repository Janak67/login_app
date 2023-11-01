import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool islight = true;

  void changeTheme() {
    islight = !islight;
    notifyListeners();
  }
}
