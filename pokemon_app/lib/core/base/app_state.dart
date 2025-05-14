import 'package:pokemon_app/core/enum/state_status.dart';

class AppState<T> {
  T? model;
  StateStatus status;

  AppState({
    required this.status,
    this.model,
  });
}
