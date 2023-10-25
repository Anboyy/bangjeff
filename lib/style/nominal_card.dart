import 'package:flutter/material.dart';

class NominalCard extends StatelessWidget {
  const NominalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Tingkat elevasi card
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.blue, // Menggunakan warna yang sudah di-set
          width: 2.0,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("Promo"), Text("8000")],
        ),
      ),
    );
  }
}
