import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Global{
  static const List validEmail = ['chavi@gmail.com']; //because there was not an database
}

class HomeModel extends ChangeNotifier {

  get isVisible => _isVisible;
  bool _isVisible = false;
  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;
  bool _isValid = false;
  void isValidEmail(String input) {

    if (input == Global .validEmail.first) {
      _isValid = true;
    } else {
      _isValid = false;
    }
    notifyListeners();
  }
}