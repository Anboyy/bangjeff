import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String alamatImage;

  MyCard({
    required this.title,
    required this.subtitle,
    required this.alamatImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(alamatImage),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ),
    );
  }
}

class ArtikelCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String alamatImage;

  ArtikelCard({
    required this.title,
    required this.subtitle,
    required this.alamatImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 50,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Image.asset(
                  alamatImage,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    title,
                    style: kFontTitle,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
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
