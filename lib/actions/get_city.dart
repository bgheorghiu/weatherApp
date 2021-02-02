part of actions;

@freezed
abstract class GetCity with _$GetCity {
  const factory GetCity() = GetCityStart;

  const factory GetCity.successful(City city) = GetCitySuccessful;

  const factory GetCity.error(dynamic error) = GetCityError;
}