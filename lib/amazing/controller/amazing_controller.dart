import 'package:get/get.dart';

class AmazingController extends GetxController
{
  RxList sliderImageList = <String>[
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
  ].obs;
  RxInt sliderIndex = 0.obs;
  void changeIndex(realindex)
  {
    sliderIndex.value=realindex;
  }
}