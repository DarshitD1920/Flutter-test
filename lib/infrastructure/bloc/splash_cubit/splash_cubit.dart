import 'package:f_app/domain/model/account_model.dart';
import 'package:f_app/infrastructure/bloc/splash_cubit/splash_cubit_state.dart';
import 'package:f_app/infrastructure/repository/splash/splash_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashRepository repository;

  SplashCubit(this.repository) : super(const SplashInitialState());

  getAccountData() async {
    emit(const SplashLoadingState());
    try {
      AccountResponse? response = await SplashRepository().getAccountDetails();

      if (response != null) {
        emit(SplashLoadedState(response));
      }
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
