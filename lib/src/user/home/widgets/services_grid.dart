import 'package:flutter/material.dart';

class ServicesGrid extends StatelessWidget {
  const ServicesGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildServiceItem(Icons.medical_services, 'Doctor', Colors.teal),
        _buildServiceItem(Icons.local_pharmacy, 'Pharmacy', Colors.teal),
        _buildServiceItem(Icons.local_hospital, 'Hospital', Colors.teal),
        _buildServiceItem(Icons.emergency, 'Ambulance', Colors.teal),
      ],
    );
  }

  Widget _buildServiceItem(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: color),
        ),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(color: color)),
      ],
    );
  }
}
