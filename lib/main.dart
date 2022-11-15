import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

/*
newsApp жана weatherAppтин логикада иштөө картасы.
Get.toNamed => каяка Named болот? => (AppPage.WEATHER) => (appPage) => WEATHER => Routes.WEATHER => (abstract class Routes) => WEATHER = _Paths.WEATHER => (_Paths) => WEATHER = '/weather';
pathsтын ичиндеги Weather Nameге келе турган болсо анда Getpageтеги page:() => const WeatherView анан binding: WeatherBinding => class WeatherBindingди иштетип кой дейбиз, анын ичиндеги => Get.LasyPutтагы WeatherController => WeatherViewну иштетет.


*/

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
