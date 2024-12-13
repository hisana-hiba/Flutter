import 'dart:convert';

import 'package:http/http.dart' as http;




import '../model/weather model.dart';

class WeatherServices {


  fetchWeather() async {
    final response = await http.get(
      Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=11.254770504873738, 75.82786067710245&q= 75.82822545752244&appid=509079b22fae7e954dff8403ef5eba0e"),
    );

    try {
      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        return WeatherData.fromJson(json);
      } else {
        throw Exception('Failed to load Weather data');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}