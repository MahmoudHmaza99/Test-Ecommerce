import 'package:flutter/material.dart';

class Mymodel with ChangeNotifier {
  var name = "what is Your name ?";

  void showName(String val) {
    name = val;
    notifyListeners();
  }
}

class Anothermodel {
  Mymodel mymodel;
  Anothermodel(this.mymodel);
  void showNameParent() {
    mymodel.showName("My father name is Essam");
  }
}
