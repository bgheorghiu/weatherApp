import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weatherapp/actions/index.dart';
import 'package:weatherapp/data/weather_api.dart';
import 'package:weatherapp/middleware/app_middleware.dart';
import 'package:weatherapp/models/index.dart';
import 'package:weatherapp/presentation/home.dart';
import 'package:weatherapp/reducer/reducer.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';

void main() {
  final Client client = Client();
  final WeatherApi weatherApi = WeatherApi(client: client);
  final AppMiddleware middleware = AppMiddleware(weatherApi: weatherApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: middleware.middleware,
  );

  store.dispatch(const GetCity());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
