import 'package:flutter/material.dart';

class HealthService {
  final String name;
  final String category;
  final String description;

  HealthService({
    required this.name,
    required this.category,
    required this.description,
  });
}

class Layanan extends StatelessWidget {
  final List<HealthService> healthServices = [
    HealthService(
      name: 'Pemeriksaan Umum',
      category: 'Konsultasi',
      description:
          'Pelayanan di Ruang Pemeriksaan Umum merupakan salah satu dari jenis pelayanan di App Dinkes',
    ),
    HealthService(
      name: 'Pemeriksaan Gigi',
      category: 'Konsultasi',
      description:
          'Pemeriksaan Gigi gratis yang bisa digunakan oleh semua khalangan masyrakat',
    ),
    HealthService(
      name: 'Tes Darah',
      category: 'Laboratorium',
      description:
          'Pemeriksaan darah yang dilakukan untuk mengetahui kondisi kesehatan',
    ),
    HealthService(
      name: 'Timbang Berat Badann',
      category: 'Tes Mandiri',
      description:
          'Pemeriksaan berat badan yang dilakukan untuk mengetahui kondisi kesehatan',
    ),
    // Tambahkan layanan kesehatan lainnya di sini...
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HealthServiceCategories(categories: getCategories()),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: healthServices.length,
            itemBuilder: (BuildContext context, int index) {
              return HealthServiceCard(healthService: healthServices[index]);
            },
          ),
        ],
      ),
    );
  }

  List<String> getCategories() {
    return healthServices.map((service) => service.category).toSet().toList();
  }
}

class HealthServiceCard extends StatelessWidget {
  final HealthService healthService;

  HealthServiceCard({required this.healthService});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    healthService.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    healthService.description,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HealthServiceCategories extends StatelessWidget {
  final List<String> categories;

  HealthServiceCategories({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Kategori Layanan Kesehatan',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: categories.map((category) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Chip(
                  label: Text(category),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
