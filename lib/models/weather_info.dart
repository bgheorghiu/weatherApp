part of models;

abstract class WeatherInfo implements Built<WeatherInfo, WeatherInfoBuilder> {
  factory WeatherInfo([void Function(WeatherInfoBuilder) updates]) = _$WeatherInfo;

  factory WeatherInfo.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  WeatherInfo._();

  String get weather_state_name;
  String get weather_state_abbr;
  double get min_temp;
  double get max_temp;
  double get the_temp;

  static Serializer<WeatherInfo> get serializer => _$weatherInfoSerializer;
}