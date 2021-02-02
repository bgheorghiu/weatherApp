import 'dart:convert';


import 'package:http/http.dart';
import 'package:meta/meta.dart';

Future<void> main() async {
    final Client _client = Client();
    final Uri url = Uri(
      scheme: 'https',
      host: 'metaweather.com',
      pathSegments: <String>['api', 'location', 'search'],
      queryParameters: <String, String>{
        'query': 'london',
      },
    );
    print(url);
    final Response response = await _client.get(url);
    final String body = response.body;
    final List<dynamic> list = jsonDecode(body);
    print(list);

}