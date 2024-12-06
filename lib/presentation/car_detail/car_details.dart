import 'package:flutter/material.dart';

// class RollsRoysPage extends StatelessWidget {
//   const RollsRoysPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: 300,
//               child: PageView(
//                 children: [
//                   Image.asset('assets/rolls-royce-1.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/rolls-royce-2.jpg', fit: BoxFit.cover),
//                   Image.asset('assets/rolls-royce-3.jpg', fit: BoxFit.cover),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Rolls Roys Cullinan Series II (2020)',
//                     style: Theme.of(context).textTheme.headline5,
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     '₹150,000,00',
//                     style: Theme.of(context).textTheme.headline5?.copyWith(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   _buildInfoRow('Automatic', Icons.drive_eta),
//                   _buildInfoRow('Black', Icons.color_lens),
//                   _buildInfoRow('Petrol', Icons.local_gas_station),
//                   _buildInfoRow('Sedan', Icons.directions_car),
//                   const SizedBox(height: 16),
//                   Text(
//                     'Vehicle Information',
//                     style: Theme.of(context).textTheme.subtitle1?.copyWith(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   _buildInfoItem('Year', '2020'),
//                   _buildInfoItem('KMS', '10,000'),
//                   _buildInfoItem('Fuel', 'Petrol'),
//                   _buildInfoItem('Owner', '1'),
//                   _buildInfoItem('Color', 'Black'),
//                   _buildInfoItem('Mileage', null),
//                   _buildInfoItem('Engine CC', '4999'),
//                   _buildInfoItem('Insurance Valid', '31-12-2024'),
//                   const SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: const Text('Mark As Sold'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoRow(String text, IconData icon) {
//     return Row(
//       children: [
//         Icon(icon, size: 18),
//         const SizedBox(width: 4),
//         Text(text),
//       ],
//     );
//   }
//
//   Widget _buildInfoItem(String label, String? value) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(label),
//           if (value != null) Text(value),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class VehicleDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle Details'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title and Price
              Text(
                'Rolls Royce Cullinan Series II (2020)',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '₹ 150,000.00',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 8),
              const Text('Listed 2 days ago'),
              const SizedBox(height: 16),

              // Features Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FeatureItem(title: 'Automatic'),
                  FeatureItem(title: 'Black'),
                  FeatureItem(title: 'Petrol'),
                  FeatureItem(title: 'Sedan'),
                ],
              ),
              const SizedBox(height: 16),

              // Vehicle Information Section
              const Text(
                'Vehicle Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 200,
                child: GridView.count(
                  crossAxisCount: 3,childAspectRatio: 2.5,
                  children: [
                    VehicleInfoRow(title: 'Year', value: '2020'),
                    VehicleInfoRow(title: 'KMS', value: '10,000'),
                    VehicleInfoRow(title: 'Fuel', value: 'Petrol'),
                    VehicleInfoRow(title: 'Owner', value: '1'),
                    VehicleInfoRow(title: 'Color', value: 'Black'),
                    VehicleInfoRow(title: 'Engine CC', value: '4999'),
                    VehicleInfoRow(title: 'Insurance Valid', value: '31-12-2024'),
                  ],
                ),
              ),

              // Action Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(label: 'Overview'),
                  ActionButton(label: 'Specification'),
                  ActionButton(label: 'Feature'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String title;

  const FeatureItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}

class VehicleInfoRow extends StatelessWidget {
  final String title;
  final String value;

  const VehicleInfoRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.calendar_today,
              color: Color(0xFF4C1D95),

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 16),
                Text(
                  '2020',

                ),
                SizedBox(height: 8),
                Text(
                  'Year',

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String label;
  const ActionButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    );
  }
}

