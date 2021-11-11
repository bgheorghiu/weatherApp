part of models;

abstract class City implements Built<City, CityBuilder> {
  factory City([void Function(CityBuilder) updates]) = _$City;

  factory City.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json);
  }

  City._();

  @BuiltValueField(wireName: 'consolidated_weather')
  BuiltList<WeatherInfo> get weatherInfo;

  @nullable
  String get title;

  static Serializer<City> get serializer => _$citySerializer;
}
