import 'package:get/get.dart';

class TapContoller extends GetxController{
  int _x = 0;
  int get x => _x;

  void increaseX(){
    _x++;
    update();
  }

  void decreaseX(){
    _x--;
    update();
  }
}