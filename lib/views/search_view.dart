import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
         color: Colors.blue,
        ),
        title: const Text(
          'Search City',
         style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              var gerWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              gerWeatherCubit.getWeather(cityname: value);
              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 32, horizontal: 13),
              labelText: 'Search',
              labelStyle:
                  TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Colors.blue,
              hintText: 'Enter City Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.blue),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
