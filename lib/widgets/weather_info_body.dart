import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({super.key});
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network("https:${weatherModel.image}"),
          SizedBox(height: 10),
          Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            weatherModel.date
                .toString()
                .substring(0, weatherModel.date.toString().lastIndexOf(":")),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            weatherModel.temp.toString(),
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "MinTemp: ${weatherModel.minTemp}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            "MaxTemp: ${weatherModel.maxTemp}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(fontSize: 20),
          ),
        ]),
      ),
    );
  }
}
