import 'package:flutter/material.dart';

class AdditionalWeatherInfo extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditionalWeatherInfo({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              label,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
