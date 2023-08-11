import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello Sahl!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.access_time),
                SizedBox(width: 8),
                Text(
                  '10:45 AM', // Update with actual time
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.thermostat_outlined),
                SizedBox(width: 8),
                Text(
                  '28°C', // Update with actual temperature
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Today\'s Stats',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              children: [
                CardWidget(
                  icon: Icons.favorite,
                  title: 'Heart Rate',
                  value: '80 bpm',
                ),
                CardWidget(
                  icon: Icons.directions_run,
                  title: 'Steps',
                  value: '5,000',
                ),
                CardWidget(
                  icon: Icons.local_drink,
                  title: 'Water Intake',
                  value: '2.5 L',
                ),
                CardWidget(
                  icon: Icons.battery_charging_full,
                  title: 'Battery',
                  value: '75%',
                ),
                // Add more CardWidgets here
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const CardWidget({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 20),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
