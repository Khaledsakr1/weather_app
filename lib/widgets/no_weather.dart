import 'package:flutter/material.dart';

class NoWeather extends StatelessWidget {
  const NoWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/clear.png',
                width: 50,
              ),
              Image.asset(
                'assets/images/cloudy.png',
                width: 50,
              ),
              Image.asset(
                'assets/images/rainy.png',
                width: 50,
              ),
              Image.asset(
                'assets/images/snow.png',
                width: 50,
              ),
              Image.asset(
                'assets/images/thunderstorm.png',
                width: 50,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 200,
        ),
        const Text(
          'There Is No Weather 😔 Start',
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
        const Text(
          'Searching Now 🔎',
          style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ],
    );
  }
}
