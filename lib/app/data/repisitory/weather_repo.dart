import 'package:step_1/app/constants/api_const.dart';
import 'package:step_1/app/data/models/weather_model.dart';

class WeatherRepo {
  // link
  // Dio arkyluu dataga request jonot
  //200 201
  // 200 barabar bolso weather model tuzobuz
  // moeldi return kylabyz
  // else stausCode null bolso return null

  Future<Weather?> getWeather() async {
    // dio menen get alyp kel
    final response = await dio.get(ApiConst.weatherApi);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final weather = Weather.fromJson(response.data);
      return weather;
    } else {
      return null;
    }
  }
}
