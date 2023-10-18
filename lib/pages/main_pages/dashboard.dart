import 'package:bangjeff/material/card_tile.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final List<String> imageUrls = [
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png',
    'assets/images/promo.png'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                            Text(
                              "Hallo, Yawan Divta",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
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
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red[300],
                                  ),
                                  child: Icon(
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
                                    decoration: InputDecoration(
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
                            itemCount: imageUrls.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      margin: EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        imageUrls[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "_Nama Game",
                                    style: kFontSubtitle,
                                  ),
                                  Text("Developer")
                                ],
                              );
                            },
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Top Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Pengaturan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
