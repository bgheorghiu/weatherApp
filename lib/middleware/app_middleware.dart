import 'package:weatherapp/data/weather_api.dart';
import 'package:weatherapp/models/index.dart';
import 'package:weatherapp/actions/index.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

class AppMiddleware {
  AppMiddleware({@required WeatherApi weatherApi})
      : assert(weatherApi != null),
        _weatherApi = weatherApi;

  final WeatherApi _weatherApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetCityStart>(_getCityStart),
    ];
  }

  Future<void> _getCityStart(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);
    try {
      final City cityInfo = await _weatherApi.getCity(
        store.state.query,
      );
      final GetCitySuccessful successful = GetCity.successful(cityInfo);
      store.dispatch(successful);
    } catch (e) {
      final GetCityError error = GetCity.error(e);
      store.dispatch(error);
    }
  }
}