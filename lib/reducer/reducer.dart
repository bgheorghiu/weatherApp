import 'package:redux/redux.dart';
import 'package:weatherapp/actions/index.dart';
import 'package:weatherapp/models/index.dart';

Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetCityStart>(_getCityStart),
  TypedReducer<AppState, GetCitySuccessful>(_getCitySuccessful),
  TypedReducer<AppState, GetCityError>(_getCityError),
  TypedReducer<AppState, UpdateQuery>(_updateQuery),
]);

AppState _getCityStart(AppState state, GetCityStart action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = true);
}

AppState _getCitySuccessful(AppState state, GetCitySuccessful action) {
  return state.rebuild((AppStateBuilder b) => b
    ..city = action.city.toBuilder()
    ..isLoading = false);
}

AppState _getCityError(AppState state, GetCityError action) {
  return state.rebuild((AppStateBuilder b) => b.isLoading = false);
}

AppState _updateQuery(AppState state, UpdateQuery action) {
  return state.rebuild((AppStateBuilder b) => b..query = action.query);
}
