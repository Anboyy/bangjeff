import 'package:bangjeff/model/list_game_model.dart';
import 'package:bangjeff/pages/detailPages/detail_game.dart';
import 'package:bangjeff/service/list_game_service.dart';
import 'package:flutter/material.dart';
import 'package:bangjeff/material/card_tile.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<ListGameModel> _listGame = [];

  @override
  void initState() {
    super.initState();
    getGame(); // Call getGame during initialization.
  }

  // Declare getGame as an async method and await the asynchronous operation.
  Future<void> getGame() async {
    ListGameService _service = ListGameService();
    final value = await _service.getGameData();
    setState(() {
      _listGame = value!;
    });
  }

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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Hallo, Yawan Divta",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Ink(
                            decoration: const ShapeDecoration(
                              color: Colors.transparent,
                              shape: CircleBorder(),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50.0),
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red[300],
                                ),
                                child: const Icon(
                                  Icons.grid_view_rounded,
                                  size: 32,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                              icon: const Icon(Icons.search),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    CarouselSlider(
                      items: imageUrls.map((url) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                url,
                                fit: BoxFit.fill,
                              ),
                            );
                          },
                        );
                      }).toList(),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        height: MediaQuery.of(context).size.height * 0.2,
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
                          "Popular 24 Jam 🎗️",
                          style: kFontTitle,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.height * 0.15,
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _listGame.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailGamePage(),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      margin: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        _listGame[index].image.toString(),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  _listGame[index].nama_produk.toString(),
                                  style: kFontSubtitle,
                                ),
                                Text(
                                  _listGame[index].pengembang.toString(),
                                  style: kFontSubtitle,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Text(
                              "Game Lainnya",
                              style: kFontTitle,
                            ),
                            const Spacer(),
                            TextButton(
                              onPressed: () async {},
                              child: const Text("Lihat Semua"),
                            )
                          ],
                        ),
                      ),
                      MyCard(
                        route: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => DetailGamePage()),
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
                              builder: ((context) => DetailGamePage()),
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
                              builder: ((context) => DetailGamePage()),
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
                              builder: ((context) => DetailGamePage()),
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
