import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String alamatImage;
  final VoidCallback route;

  const MyCard({
    super.key,
    required this.route,
    required this.title,
    required this.subtitle,
    required this.alamatImage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: route,
      child: Card(
        elevation: 4,
        child: ListTile(
          leading: Image.asset(
            alamatImage,
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class ArtikelCard extends StatelessWidget {
  final VoidCallback route;
  final String title;
  final String subtitle;
  final String alamatImage;
  final String jenis;

  const ArtikelCard({
    super.key,
    required this.route,
    required this.title,
    required this.subtitle,
    required this.alamatImage,
    required this.jenis,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route,
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: Image.asset(
                  alamatImage,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    jenis,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(subtitle),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
