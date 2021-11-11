// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<City> _$citySerializer = new _$CitySerializer();
Serializer<WeatherInfo> _$weatherInfoSerializer = new _$WeatherInfoSerializer();

class _$CitySerializer implements StructuredSerializer<City> {
  @override
  final Iterable<Type> types = const [City, _$City];
  @override
  final String wireName = 'City';

  @override
  Iterable<Object> serialize(Serializers serializers, City object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'consolidated_weather',
      serializers.serialize(object.weatherInfo,
          specifiedType: const FullType(BuiltList, const [const FullType(WeatherInfo)])),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  City deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'consolidated_weather':
          result.weatherInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(WeatherInfo)])) as BuiltList<Object>);
          break;
        case 'title':
          result.title = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherInfoSerializer implements StructuredSerializer<WeatherInfo> {
  @override
  final Iterable<Type> types = const [WeatherInfo, _$WeatherInfo];
  @override
  final String wireName = 'WeatherInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, WeatherInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'weather_state_name',
      serializers.serialize(object.weather_state_name, specifiedType: const FullType(String)),
      'weather_state_abbr',
      serializers.serialize(object.weather_state_abbr, specifiedType: const FullType(String)),
      'min_temp',
      serializers.serialize(object.min_temp, specifiedType: const FullType(double)),
      'max_temp',
      serializers.serialize(object.max_temp, specifiedType: const FullType(double)),
      'the_temp',
      serializers.serialize(object.the_temp, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  WeatherInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'weather_state_name':
          result.weather_state_name = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'weather_state_abbr':
          result.weather_state_abbr = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'min_temp':
          result.min_temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'max_temp':
          result.max_temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'the_temp':
          result.the_temp = serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final String query;
  @override
  final bool isLoading;
  @override
  final City city;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.query, this.isLoading, this.city}) : super._() {
    if (query == null) {
      throw new BuiltValueNullFieldError('AppState', 'query');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
    if (city == null) {
      throw new BuiltValueNullFieldError('AppState', 'city');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && query == other.query && isLoading == other.isLoading && city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, query.hashCode), isLoading.hashCode), city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('query', query)
          ..add('isLoading', isLoading)
          ..add('city', city))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  CityBuilder _city;
  CityBuilder get city => _$this._city ??= new CityBuilder();
  set city(CityBuilder city) => _$this._city = city;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _query = _$v.query;
      _isLoading = _$v.isLoading;
      _city = _$v.city?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(query: query, isLoading: isLoading, city: city.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'city';
        city.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$City extends City {
  @override
  final BuiltList<WeatherInfo> weatherInfo;
  @override
  final String title;

  factory _$City([void Function(CityBuilder) updates]) => (new CityBuilder()..update(updates)).build();

  _$City._({this.weatherInfo, this.title}) : super._() {
    if (weatherInfo == null) {
      throw new BuiltValueNullFieldError('City', 'weatherInfo');
    }
  }

  @override
  City rebuild(void Function(CityBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CityBuilder toBuilder() => new CityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is City && weatherInfo == other.weatherInfo && title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, weatherInfo.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('City')
          ..add('weatherInfo', weatherInfo)
          ..add('title', title))
        .toString();
  }
}

class CityBuilder implements Builder<City, CityBuilder> {
  _$City _$v;

  ListBuilder<WeatherInfo> _weatherInfo;
  ListBuilder<WeatherInfo> get weatherInfo => _$this._weatherInfo ??= new ListBuilder<WeatherInfo>();
  set weatherInfo(ListBuilder<WeatherInfo> weatherInfo) => _$this._weatherInfo = weatherInfo;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  CityBuilder();

  CityBuilder get _$this {
    if (_$v != null) {
      _weatherInfo = _$v.weatherInfo?.toBuilder();
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(City other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$City;
  }

  @override
  void update(void Function(CityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$City build() {
    _$City _$result;
    try {
      _$result = _$v ?? new _$City._(weatherInfo: weatherInfo.build(), title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'weatherInfo';
        weatherInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('City', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherInfo extends WeatherInfo {
  @override
  final String weather_state_name;
  @override
  final String weather_state_abbr;
  @override
  final double min_temp;
  @override
  final double max_temp;
  @override
  final double the_temp;

  factory _$WeatherInfo([void Function(WeatherInfoBuilder) updates]) =>
      (new WeatherInfoBuilder()..update(updates)).build();

  _$WeatherInfo._({this.weather_state_name, this.weather_state_abbr, this.min_temp, this.max_temp, this.the_temp})
      : super._() {
    if (weather_state_name == null) {
      throw new BuiltValueNullFieldError('WeatherInfo', 'weather_state_name');
    }
    if (weather_state_abbr == null) {
      throw new BuiltValueNullFieldError('WeatherInfo', 'weather_state_abbr');
    }
    if (min_temp == null) {
      throw new BuiltValueNullFieldError('WeatherInfo', 'min_temp');
    }
    if (max_temp == null) {
      throw new BuiltValueNullFieldError('WeatherInfo', 'max_temp');
    }
    if (the_temp == null) {
      throw new BuiltValueNullFieldError('WeatherInfo', 'the_temp');
    }
  }

  @override
  WeatherInfo rebuild(void Function(WeatherInfoBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  WeatherInfoBuilder toBuilder() => new WeatherInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherInfo &&
        weather_state_name == other.weather_state_name &&
        weather_state_abbr == other.weather_state_abbr &&
        min_temp == other.min_temp &&
        max_temp == other.max_temp &&
        the_temp == other.the_temp;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, weather_state_name.hashCode), weather_state_abbr.hashCode), min_temp.hashCode),
            max_temp.hashCode),
        the_temp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('WeatherInfo')
          ..add('weather_state_name', weather_state_name)
          ..add('weather_state_abbr', weather_state_abbr)
          ..add('min_temp', min_temp)
          ..add('max_temp', max_temp)
          ..add('the_temp', the_temp))
        .toString();
  }
}

class WeatherInfoBuilder implements Builder<WeatherInfo, WeatherInfoBuilder> {
  _$WeatherInfo _$v;

  String _weather_state_name;
  String get weather_state_name => _$this._weather_state_name;
  set weather_state_name(String weather_state_name) => _$this._weather_state_name = weather_state_name;

  String _weather_state_abbr;
  String get weather_state_abbr => _$this._weather_state_abbr;
  set weather_state_abbr(String weather_state_abbr) => _$this._weather_state_abbr = weather_state_abbr;

  double _min_temp;
  double get min_temp => _$this._min_temp;
  set min_temp(double min_temp) => _$this._min_temp = min_temp;

  double _max_temp;
  double get max_temp => _$this._max_temp;
  set max_temp(double max_temp) => _$this._max_temp = max_temp;

  double _the_temp;
  double get the_temp => _$this._the_temp;
  set the_temp(double the_temp) => _$this._the_temp = the_temp;

  WeatherInfoBuilder();

  WeatherInfoBuilder get _$this {
    if (_$v != null) {
      _weather_state_name = _$v.weather_state_name;
      _weather_state_abbr = _$v.weather_state_abbr;
      _min_temp = _$v.min_temp;
      _max_temp = _$v.max_temp;
      _the_temp = _$v.the_temp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$WeatherInfo;
  }

  @override
  void update(void Function(WeatherInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$WeatherInfo build() {
    final _$result = _$v ??
        new _$WeatherInfo._(
            weather_state_name: weather_state_name,
            weather_state_abbr: weather_state_abbr,
            min_temp: min_temp,
            max_temp: max_temp,
            the_temp: the_temp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
