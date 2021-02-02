part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initialState() {
    final AppStateBuilder builder = AppStateBuilder();
    builder
      ..isLoading = true
      ..query = 'london';
    return builder.build();
  }

  AppState._();

  String get query;

  bool get isLoading;

  City get city;
}