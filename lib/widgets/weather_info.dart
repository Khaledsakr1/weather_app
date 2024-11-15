import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityname,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text('Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}', style: TextStyle(fontSize: 20),),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https:${weatherModel.image}",
                height: 80,
              ),
              Text(
                weatherModel.temp.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Column(
                children: [
                  Text('Maxtemp: ${weatherModel.maxtemp.round()}'),
                  Text('Mintemp: ${weatherModel.mintemp.round()}'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            weatherModel.weathercondition,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    );
  }
}