import 'package:amazing_quotes/amazing/controller/amazing_controller.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AmazingController controller = Get.put(AmazingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text("Amazing Qoutes",style: TextStyle(letterSpacing: 1,fontSize: 20,color: Colors.white),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              height: 25.h,
              width: 100.w,
              child: Stack(
                children: [
                  CarouselSlider.builder(itemCount: controller.sliderImageList.length, itemBuilder: (context, index, realIndex) {

                    return Image.asset(controller.sliderImageList[index], fit: BoxFit.cover,);
                  }, options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      controller.changeIndex(index);
                    },
                  )),
                  Obx(
                     () => Align(
                       alignment: Alignment(0,0.9),
                       child: CarouselIndicator(
                        count: controller.sliderImageList.length,
                         index: controller.sliderIndex.value,
                         space: 3,
                         height: 10,
                         width: 10,
                         color: Colors.white,
                         activeColor: Colors.red,
                    ),
                     ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
