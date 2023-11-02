import 'package:bangjeff/material/card_tile.dart';
import 'package:bangjeff/pages/main_pages/detailed_pages/detailed_artikel.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          route: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => DetailedArtikel()),
              ),
            );
          },
          jenis: "game",
          title:
              "akun dengan User name Katou Megumi menduduki top 1 global Ruby",
          subtitle: "2 jam",
          alamatImage: 'assets/images/promo.png'),
      ArtikelCard(
          route: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => DetailedArtikel()),
              ),
            );
          },
          jenis: "game",
          title:
              "akun dengan User name Katou Megumi menduduki top 1 global Ruby",
          subtitle: "2 jam",
          alamatImage: 'assets/images/promo.png'),
      ArtikelCard(
          route: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => DetailedArtikel()),
              ),
            );
          },
          jenis: "game",
          title:
              "akun dengan User name Katou Megumi menduduki top 1 global Ruby",
          subtitle: "2 jam",
          alamatImage: 'assets/images/promo.png'),
      ArtikelCard(
          route: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => DetailedArtikel()),
              ),
            );
          },
          jenis: "game",
          title:
              "akun dengan User name Katou Megumi menduduki top 1 global Ruby",
          subtitle: "2 jam",
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
                        "Artikel",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
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
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: CarouselSlider(
                          items: ArtikelWidget,
                          options: CarouselOptions(
                            autoPlay: true,
                            height: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text("Semua"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Semua"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Semua"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Semua"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Semua"),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text("Semua"),
                            ),
                          ],
                        ),
                      ),
                      MyCard(
                        route: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => DetailedArtikel()),
                            ),
                          );
                        },
                        title: 'Card 1',
                        subtitle: 'Subtitle 1',
                        alamatImage: 'assets/images/promo.png',
                      ),
                      MyCard(
                        route: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => DetailedArtikel()),
                            ),
                          );
                        },
                        title: 'Card 2',
                        subtitle: 'Subtitle 2',
                        alamatImage: 'assets/images/promo.png',
                      ),
                      MyCard(
                        route: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => DetailedArtikel()),
                            ),
                          );
                        },
                        title: 'Card 3',
                        subtitle: 'Subtitle 3',
                        alamatImage: 'assets/images/promo.png',
                      ),
                      MyCard(
                        route: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => DetailedArtikel()),
                            ),
                          );
                        },
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
