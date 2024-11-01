import 'package:flutter/material.dart';

class RadioButtonProvider extends ChangeNotifier {
  String radiovalue = '';

  void selectbutton(val) {
    radiovalue = val;
    notifyListeners();
  }
   
}
