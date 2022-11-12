import 'package:f_app/domain/model/account_model.dart';

abstract class SplashState {
  const SplashState();
}

class SplashInitialState extends SplashState {
  const SplashInitialState();
}

class SplashLoadingState extends SplashState {
  const SplashLoadingState();
}

class SplashLoadedState extends SplashState {
  final AccountResponse? accountResponse;
  const SplashLoadedState(this.accountResponse);
}

class ErrorState extends SplashState {
  final String? message;
  const ErrorState(this.message);
}
