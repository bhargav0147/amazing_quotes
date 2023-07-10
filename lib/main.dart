import 'package:amazing_quotes/amazing/view/home_screen.dart';
import 'package:amazing_quotes/amazing/view/quotes_screen.dart';
import 'package:amazing_quotes/amazing/view/show_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (p0) => HomeScreen(),
          'quotes': (p0) => QuotesScreen(),
          'show': (p0) => ShowScreen(),
        },
      ),
    ),
  ));
}
