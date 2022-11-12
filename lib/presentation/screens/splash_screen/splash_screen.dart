import 'package:f_app/application/constants.dart';
import 'package:f_app/application/utils.dart';
import 'package:f_app/infrastructure/bloc/splash_cubit/splash_cubit.dart';
import 'package:f_app/infrastructure/bloc/splash_cubit/splash_cubit_state.dart';
import 'package:f_app/presentation/screens/contact_screen/contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await BlocProvider.of<SplashCubit>(context).getAccountData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is ErrorState) {
            showSnackbar(context, state.message.toString());
          } else if (state is SplashLoadedState) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => ContactScreen(
                    accountResponse: state.accountResponse,
                  ),
                ),
                (Route<dynamic> route) => false);
          }
        },
        child: BlocBuilder<SplashCubit, SplashState>(
          builder: (context, state) {
            return Center(
              child: Container(
                alignment: Alignment.center,
                child: state is SplashLoadingState
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            stringWelcome,
                            style: fontStyleSemiBold(fontsize: 32),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const CircularProgressIndicator.adaptive(),
                        ],
                      )
                    : const SizedBox.shrink(),
              ),
            );
          },
        ),
      ),
    );
  }
}
