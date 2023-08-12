import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String appVersion = '2.12.0';
  final String lastUpdate = '12 Agustus 2023';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/dinkes_logo.png', // Pastikan Anda memiliki logo yang sesuai di folder images
            width: 150,
            height: 150,
          ),
          SizedBox(height: 20),
          Text(
            'Dinkes App',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Dinkes App adalah sebuah aplikasi kesehatan yang dirancang untuk memberikan informasi dan layanan kesehatan kepada masyarakat. Kami berkomitmen untuk meningkatkan kualitas hidup melalui pelayanan kesehatan yang berkualitas.',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            'Versi: $appVersion',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Tanggal Pembaruan Terakhir: $lastUpdate',
          ),
        ],
      ),
    );
  }
}
