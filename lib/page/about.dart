import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Tentang Aplikasi Ini...',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
