import 'dart:convert';

import 'package:http/http.dart';
import 'package:weatherapp/models/index.dart';

class WeatherApi {
  const WeatherApi({required Client client}) : _client = client;

  final Client _client;

  Future<City> getCity(String query) async {
    final Client _client = Client();
    final Uri url = Uri(
      scheme: 'https',
      host: 'www.metaweather.com',
      pathSegments: <String>['api', 'location', 'search'],
      queryParameters: <String, String>{
        'query': query,
      },
    );
    print(url);
    final Response response = await _client.get(url);
    final String body = response.body;
    final int id = jsonDecode(body)[0]['woeid'];

    final Uri urlWeather = Uri(
      scheme: 'https',
      host: 'www.metaweather.com',
      pathSegments: <String>['api', 'location', id.toString()],
    );

    print(urlWeather);
    final Response responseWeather = await _client.get(urlWeather);
    final String bodyWeather = responseWeather.body;
    final dynamic jsonWeather = jsonDecode(bodyWeather);

    return City.fromJson(jsonWeather);
  }
}
