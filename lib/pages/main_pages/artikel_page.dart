import 'package:bangjeff/material/card_tile.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Artikel extends StatefulWidget {
  const Artikel({super.key});

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  final List<String> imageUrls = [
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> ArtikelWidget = [
      ArtikelCard(
          title: "title",
          subtitle: "subtitle",
          alamatImage: 'assets/images/promo.png'),
      ArtikelCard(
          title: "title",
          subtitle: "subtitle",
          alamatImage: 'assets/images/promo.png'),
      ArtikelCard(
          title: "title",
          subtitle: "subtitle",
          alamatImage: 'assets/images/promo.png'),
      ArtikelCard(
          title: "title",
          subtitle: "subtitle",
          alamatImage: 'assets/images/promo.png'),
    ];
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFE54649), Color(0xFF1E1E1E)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Hallo, Yawan Divta",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: TextField(
                                  onChanged: (value) {
                                    setState(() {});
                                  },
                                  decoration: const InputDecoration(
                                    hintText: 'Cari...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9.0),
                        child: Text(
                          "Artikel Terbaru",
                          style: kFontTitle,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: CarouselSlider(
                          items: ArtikelWidget,
                          options: CarouselOptions(
                            autoPlay: true,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 9.0),
                        child: Row(
                          children: [
                            Text(
                              "Game Lainnya",
                              style: kFontTitle,
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text("Lihat Semua"),
                            )
                          ],
                        ),
                      ),
                      MyCard(
                        title: 'Card 1',
                        subtitle: 'Subtitle 1',
                        alamatImage: 'assets/images/promo.png',
                      ),
                      MyCard(
                        title: 'Card 2',
                        subtitle: 'Subtitle 2',
                        alamatImage: 'assets/images/promo.png',
                      ),
                      MyCard(
                        title: 'Card 3',
                        subtitle: 'Subtitle 3',
                        alamatImage: 'assets/images/promo.png',
                      ),
                      MyCard(
                        title: 'Card 4',
                        subtitle: 'Subtitle 4',
                        alamatImage: 'assets/images/promo.png',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
