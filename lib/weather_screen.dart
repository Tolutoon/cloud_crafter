import 'package:flutter/material.dart';
import 'package:weather_app/add_weather_info.dart';
import 'package:weather_app/hourly_weather_item.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key});

  Future getCurrentWeather() async {
    http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Lagos&appid=34a25ed6886d631e5e0316f568d5ada7'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('refresh');
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        '300K',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Icon(
                        Icons.cloud,
                        size: 48,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Rain',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Weather Forecast',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyWeather(
                    time: '3:00',
                    temperature: '250',
                    icon: Icons.cloud,
                  ),
                  HourlyWeather(
                    time: '4:00',
                    temperature: '300',
                    icon: Icons.sunny,
                  ),
                  HourlyWeather(
                    time: '4:00',
                    temperature: '300',
                    icon: Icons.cloud,
                  ),
                  HourlyWeather(
                    time: '4:00',
                    temperature: '300',
                    icon: Icons.sunny,
                  ),
                  HourlyWeather(
                    time: '4:00',
                    temperature: '300',
                    icon: Icons.cloud,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalWeatherInfo(
                  icon: Icons.water_drop,
                  label: 'Humidity',
                  value: '98',
                ),
                AdditionalWeatherInfo(
                  icon: Icons.air,
                  label: 'Wind Speed',
                  value: '7.5',
                ),
                AdditionalWeatherInfo(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: '1000',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
