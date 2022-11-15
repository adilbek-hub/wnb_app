import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:step_1/app/constants/api_const.dart';
import 'package:step_1/app/theme/app_text_styles.dart';
import 'package:step_1/app/utils/custom_icon_button.dart';

import '../controllers/weather_controller.dart';

class WeatherView extends GetView<WeatherController> {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctr = controller;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 149, 149),
      appBar: AppBar(
        title: const Text('WeatherView'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Weather.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  icon: Icons.near_me,
                  onPressed: () {},
                ),
                CustomIconButton(
                  icon: Icons.location_city,
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
              child: FittedBox(
                child: Row(
                  children: [
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Obx(() {
                      final text = ctr.weather.value != null
                          ? (ctr.weather.value!.main.temp - 274.15)
                              .floorToDouble()
                          : 'errorTemp';
                      return Text(
                        '$text',
                        style: TextStyleWeather.numberStyle,
                      );
                    }),
                    Obx(() {
                      return ctr.weather.value != null
                          ? Image.network(
                              // Булуттун размерин 4х кылдык.
                              ApiConst.getIcon(
                                  ctr.weather.value!.weather[0].icon, 4),
                              fit: BoxFit.fitHeight,
                              height: 100,
                            )
                          : const SizedBox(
                              height: 160,
                              width: 160,
                              child: CircularProgressIndicator(),
                            );
                    }),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FittedBox(child: Obx(() {
                      final text = ctr.weather.value != null
                          ? ctr.weather.value!.weather[0].description
                          : 'error description';
                      return Text(
                        text,
                        // weather.description,
                        style: TextStyleWeather.numberStyle,

                        textAlign: TextAlign.right,
                      );
                    })),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RotatedBox(
                        quarterTurns: 4,
                        child: Obx(() {
                          final text = ctr.weather.value != null
                              ? ctr.weather.value!.sys.country
                              : 'error country';
                          return Text(text,
                              style: TextStyleWeather.numberStyle);
                        })),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
