import 'package:f_app/infrastructure/bloc/splash_cubit/splash_cubit.dart';
import 'package:f_app/infrastructure/repository/splash/splash_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';

import '../../application/exceptions/route_exception.dart';
import '../screens/splash_screen/splash_screen.dart';

class AppRouter {
  static const String splash = 'Splash';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return PageTransition(
          child: BlocProvider(
            create: (context) => SplashCubit(SplashRepository()),
            child: const SplashScreen(),
          ),
          type: PageTransitionType.leftToRight,
        );

      default:
        throw const RouteException('Route not found!');
    }
  }
}
