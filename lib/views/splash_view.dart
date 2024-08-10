import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weather/views/home_view.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "splash";
  SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Image.asset("assets/weather.jpg",
        fit: BoxFit.cover,
        ),
    );
  }
}
