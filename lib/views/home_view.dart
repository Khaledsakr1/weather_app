import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather.dart';
import 'package:weather_app/widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather App',
          style: TextStyle(color: Colors.blue),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchView();
              }));
            },
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
            if (state is NoWeatherState) {
              return NoWeather();
            } else if (state is WeatherLoadedState) {
              return WeatherInfo(
                weatherModel: state.weatherModel,
              );
            } else {
              return Text('opps there was an error, try later');
            }
          },
        ),
    );
  }
}