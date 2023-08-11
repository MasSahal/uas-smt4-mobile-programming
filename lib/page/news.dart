import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Berita terbaru akan segera ditampilkan di sini.',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
