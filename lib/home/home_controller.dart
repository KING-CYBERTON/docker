import "package:get/get.dart";
class HomeController extends GetxController {
  int _x =0;
  int get X=> _x;

  void increaseX (){
    _x++;
    update();
    print(X);

  }  
}