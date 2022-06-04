import 'package:flutter/material.dart';

class ClassBase {
  final BuildContext _c;

  ClassBase(this._c);

  void openPage(Widget page){
    Navigator.of(_c).push(MaterialPageRoute(
        builder: (context) => page
    ));
  }

  void replacePage(Widget page){
    Navigator.of(_c).pushReplacement(MaterialPageRoute(
        builder: (context) => page
    ));
  }

  void goBack(){
    Navigator.of(_c).pop();
  }
}
