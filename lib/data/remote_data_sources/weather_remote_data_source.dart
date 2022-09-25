import 'package:dio/dio.dart';


class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=e521d5470ce543c8886133630222309&q=$city&aqi=no');

    return response.data;

   
  }
}
