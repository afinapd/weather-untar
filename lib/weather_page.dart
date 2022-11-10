import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_project/weather.dart';

class WeatherPage extends StatefulWidget {
  WeatherPage({required this.weatherService});

  final WeatherService weatherService;

  @override
  State<WeatherPage> createState() => _WeatherPageeState();
}

class _WeatherPageeState extends State<WeatherPage> {
  late double temperature;
  late String weatherIcon;
  late String cityName;

  @override
  void initState() {
    super.initState();
    this.updateUI;
  }

  void updateUI() {
    setState(() {
      temperature = widget.weatherService.temperature;
      weatherIcon = widget.weatherService.weatherIcon;
      cityName = widget.weatherService.cityName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      'https://openweathermap.org/themes/openweathermap/assets/img/logo_white_cropped.png')),
              Text(cityName, style: GoogleFonts.redressed(fontSize: 40)),
              Text('$temperature Celcius', style: TextStyle(fontSize: 40))
            ],
          ),
        ),
      ),
    );
  }
}
