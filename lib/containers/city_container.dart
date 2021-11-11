import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weatherapp/models/index.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<City> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, City>(
      converter: (Store<AppState> store) {
        return store.state.city;
      },
      builder: builder,
    );
  }
}
