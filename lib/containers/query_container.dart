import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:weatherapp/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux/redux.dart';

class QueryContainer extends StatelessWidget {
  const QueryContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) {
        return store.state.query;
      },
      builder: builder,
    );
  }
}