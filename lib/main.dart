import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/views/home_view.dart';
import 'package:weather/views/splash_view.dart';

void main() {
  runApp(weather());
}

class weather extends StatelessWidget {
  weather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
        initialRoute: SplashView.routeName,
        routes: {
        SplashView.routeName:(context)=>SplashView(),
        HomeView.routeName:(context)=>HomeView(),
        },
      ),
    );
  }
}
