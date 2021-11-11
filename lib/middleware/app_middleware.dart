import 'package:redux/redux.dart';
import 'package:weatherapp/actions/index.dart';
import 'package:weatherapp/data/weather_api.dart';
import 'package:weatherapp/models/index.dart';

class AppMiddleware {
  AppMiddleware({required WeatherApi weatherApi}) : _weatherApi = weatherApi;

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
      final GetCity successful = GetCity.successful(cityInfo);
      store.dispatch(successful);
    } catch (e) {
      final GetCity error = GetCity.error(e);
      store.dispatch(error);
    }
  }
}
