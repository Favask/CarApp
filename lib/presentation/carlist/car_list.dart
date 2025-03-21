import 'package:flutter/material.dart';
import 'package:githubcheckout2/presentation/car_detail/car_details.dart';


class TotalVehiclePage extends StatelessWidget {
  final List<Map<String, dynamic>> vehicles = [
    {
      'image': 'assets/images/volkswagen_polo.jpg',
      'name': 'Volkswagen Polo',
      'price': 10000,
      'year': 2023,
      'mileage': 10000,
      'fuelType': 'Diesel',
      'isSoldOut': true,
    },
    {
      'image': 'assets/images/maruti_swift_alpha.jpg',
      'name': 'Maruti Swift Alpha',
      'price': 5000,
      'year': 2023,
      'mileage': 10000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },
    {
      'image': 'assets/images/innova_crysta.jpg',
      'name': 'Innova Crysta',
      'price': 16000,
      'year': 2023,
      'mileage': 1000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },   {
      'image': 'assets/images/innova_crysta.jpg',
      'name': 'Innova Crysta',
      'price': 16000,
      'year': 2023,
      'mileage': 1000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },   {
      'image': 'assets/images/innova_crysta.jpg',
      'name': 'Innova Crysta',
      'price': 16000,
      'year': 2023,
      'mileage': 1000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },   {
      'image': 'assets/images/innova_crysta.jpg',
      'name': 'Innova Crysta',
      'price': 16000,
      'year': 2023,
      'mileage': 1000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },   {
      'image': 'assets/images/innova_crysta.jpg',
      'name': 'Innova Crysta',
      'price': 16000,
      'year': 2023,
      'mileage': 1000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },
    {
      'image': 'assets/images/toyota_fortuner.jpg',
      'name': 'Toyota Fortuner',
      'price': 37000,
      'year': 2023,
      'mileage': 10000,
      'fuelType': 'Diesel',
      'isSoldOut': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Vehicle'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back button logic here
          },
        ),
      ),
      body: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                GestureDetector(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  VehicleDetailsScreen()));
                  },
                  child: Card(
                    
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            vehicle['image'],
                            width: 120,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vehicle['name'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '₹ ${vehicle['price'].toStringAsFixed(0)}',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text('${vehicle['year']} | '),
                                Text('${vehicle['mileage']} km | '),
                                Text(vehicle['fuelType']),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (vehicle['isSoldOut'])
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Sold Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
