import 'package:get/get.dart';

class HomeViewController extends GetxController {
  bool true_or_false=false;

  void changeBool(){
    true_or_false=!true_or_false;
    update();
  }
}