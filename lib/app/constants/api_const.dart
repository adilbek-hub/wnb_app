import 'package:dio/dio.dart';

class ApiConst {
  static const String newsApi =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=2d01e9e3d28d4189b48461be856e9655';
  static const String weatherApi =
      'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String getIcon(String iconCode, int size) {
    // чакырылган сайттын ичиндеги wn жана @${size}x иконканын размерин 4х кылуу үчүн жазылды
    return 'https://openweathermap.org/img/wn/$iconCode@${size}x.png';
  }
}

final dio = Dio();
