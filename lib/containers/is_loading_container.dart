import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weatherapp/models/index.dart';

class IsLoadingContainer extends StatelessWidget {
  const IsLoadingContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<bool> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, bool>(
      converter: (Store<AppState> store) {
        return store.state.isLoading;
      },
      builder: builder,
    );
  }
}
