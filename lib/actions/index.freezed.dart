// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetCityTearOff {
  const _$GetCityTearOff();

// ignore: unused_element
  GetCityStart call() {
    return const GetCityStart();
  }

// ignore: unused_element
  GetCitySuccessful successful(City city) {
    return GetCitySuccessful(
      city,
    );
  }

// ignore: unused_element
  GetCityError error(dynamic error) {
    return GetCityError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetCity = _$GetCityTearOff();

/// @nodoc
mixin _$GetCity {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(City city),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCityStart value), {
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCityStart value), {
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetCityCopyWith<$Res> {
  factory $GetCityCopyWith(GetCity value, $Res Function(GetCity) then) = _$GetCityCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCityCopyWithImpl<$Res> implements $GetCityCopyWith<$Res> {
  _$GetCityCopyWithImpl(this._value, this._then);

  final GetCity _value;
  // ignore: unused_field
  final $Res Function(GetCity) _then;
}

/// @nodoc
abstract class $GetCityStartCopyWith<$Res> {
  factory $GetCityStartCopyWith(GetCityStart value, $Res Function(GetCityStart) then) =
      _$GetCityStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCityStartCopyWithImpl<$Res> extends _$GetCityCopyWithImpl<$Res> implements $GetCityStartCopyWith<$Res> {
  _$GetCityStartCopyWithImpl(GetCityStart _value, $Res Function(GetCityStart) _then)
      : super(_value, (v) => _then(v as GetCityStart));

  @override
  GetCityStart get _value => super._value as GetCityStart;
}

/// @nodoc
class _$GetCityStart implements GetCityStart {
  const _$GetCityStart();

  @override
  String toString() {
    return 'GetCity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCityStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(City city),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCityStart value), {
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCityStart value), {
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCityStart implements GetCity {
  const factory GetCityStart() = _$GetCityStart;
}

/// @nodoc
abstract class $GetCitySuccessfulCopyWith<$Res> {
  factory $GetCitySuccessfulCopyWith(GetCitySuccessful value, $Res Function(GetCitySuccessful) then) =
      _$GetCitySuccessfulCopyWithImpl<$Res>;
  $Res call({City city});
}

/// @nodoc
class _$GetCitySuccessfulCopyWithImpl<$Res> extends _$GetCityCopyWithImpl<$Res>
    implements $GetCitySuccessfulCopyWith<$Res> {
  _$GetCitySuccessfulCopyWithImpl(GetCitySuccessful _value, $Res Function(GetCitySuccessful) _then)
      : super(_value, (v) => _then(v as GetCitySuccessful));

  @override
  GetCitySuccessful get _value => super._value as GetCitySuccessful;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(GetCitySuccessful(
      city == freezed ? _value.city : city as City,
    ));
  }
}

/// @nodoc
class _$GetCitySuccessful implements GetCitySuccessful {
  const _$GetCitySuccessful(this.city) : assert(city != null);

  @override
  final City city;

  @override
  String toString() {
    return 'GetCity.successful(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCitySuccessful &&
            (identical(other.city, city) || const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  $GetCitySuccessfulCopyWith<GetCitySuccessful> get copyWith =>
      _$GetCitySuccessfulCopyWithImpl<GetCitySuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(City city),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCityStart value), {
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCityStart value), {
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCitySuccessful implements GetCity {
  const factory GetCitySuccessful(City city) = _$GetCitySuccessful;

  City get city;
  $GetCitySuccessfulCopyWith<GetCitySuccessful> get copyWith;
}

/// @nodoc
abstract class $GetCityErrorCopyWith<$Res> {
  factory $GetCityErrorCopyWith(GetCityError value, $Res Function(GetCityError) then) =
      _$GetCityErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetCityErrorCopyWithImpl<$Res> extends _$GetCityCopyWithImpl<$Res> implements $GetCityErrorCopyWith<$Res> {
  _$GetCityErrorCopyWithImpl(GetCityError _value, $Res Function(GetCityError) _then)
      : super(_value, (v) => _then(v as GetCityError));

  @override
  GetCityError get _value => super._value as GetCityError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetCityError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetCityError implements GetCityError {
  const _$GetCityError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetCity.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCityError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetCityErrorCopyWith<GetCityError> get copyWith => _$GetCityErrorCopyWithImpl<GetCityError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(), {
    @required Result successful(City city),
    @required Result error(dynamic error),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(), {
    Result successful(City city),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(GetCityStart value), {
    @required Result successful(GetCitySuccessful value),
    @required Result error(GetCityError value),
  }) {
    assert($default != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(GetCityStart value), {
    Result successful(GetCitySuccessful value),
    Result error(GetCityError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCityError implements GetCity {
  const factory GetCityError(dynamic error) = _$GetCityError;

  dynamic get error;
  $GetCityErrorCopyWith<GetCityError> get copyWith;
}

/// @nodoc
class _$UpdateQueryTearOff {
  const _$UpdateQueryTearOff();

// ignore: unused_element
  _UpdateQuery call(String query) {
    return _UpdateQuery(
      query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateQuery = _$UpdateQueryTearOff();

/// @nodoc
mixin _$UpdateQuery {
  String get query;

  $UpdateQueryCopyWith<UpdateQuery> get copyWith;
}

/// @nodoc
abstract class $UpdateQueryCopyWith<$Res> {
  factory $UpdateQueryCopyWith(UpdateQuery value, $Res Function(UpdateQuery) then) = _$UpdateQueryCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$UpdateQueryCopyWithImpl<$Res> implements $UpdateQueryCopyWith<$Res> {
  _$UpdateQueryCopyWithImpl(this._value, this._then);

  final UpdateQuery _value;
  // ignore: unused_field
  final $Res Function(UpdateQuery) _then;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateQueryCopyWith<$Res> implements $UpdateQueryCopyWith<$Res> {
  factory _$UpdateQueryCopyWith(_UpdateQuery value, $Res Function(_UpdateQuery) then) =
      __$UpdateQueryCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$UpdateQueryCopyWithImpl<$Res> extends _$UpdateQueryCopyWithImpl<$Res> implements _$UpdateQueryCopyWith<$Res> {
  __$UpdateQueryCopyWithImpl(_UpdateQuery _value, $Res Function(_UpdateQuery) _then)
      : super(_value, (v) => _then(v as _UpdateQuery));

  @override
  _UpdateQuery get _value => super._value as _UpdateQuery;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_UpdateQuery(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_UpdateQuery implements _UpdateQuery {
  const _$_UpdateQuery(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'UpdateQuery(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateQuery &&
            (identical(other.query, query) || const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$UpdateQueryCopyWith<_UpdateQuery> get copyWith => __$UpdateQueryCopyWithImpl<_UpdateQuery>(this, _$identity);
}

abstract class _UpdateQuery implements UpdateQuery {
  const factory _UpdateQuery(String query) = _$_UpdateQuery;

  @override
  String get query;
  @override
  _$UpdateQueryCopyWith<_UpdateQuery> get copyWith;
}
