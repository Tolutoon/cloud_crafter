import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

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
                ;
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // maincard
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(children: [
                    Text(
                      '300°F',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
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
                  ]),
                ),
              ),
            ),
            Text('Weather Forecast'),
            SizedBox(
              height: 20,
            ),
            // weather forecast cards
            Placeholder(
              fallbackHeight: 150,
            ),
            SizedBox(
              height: 20,
            ),
            // additional information
            Placeholder(
              fallbackHeight: 150,
            ),
          ],
        ),
      ),
    );
  }
}
