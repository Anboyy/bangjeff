import 'package:bangjeff/model/list_game_model.dart';
import 'package:bangjeff/pages/detailPages/detail_game.dart';
import 'package:bangjeff/service/list_game_service.dart';
import 'package:flutter/material.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<ListGameModel> _listGame = [];

  final List<String> myCoolStrings = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Some other item'
  ];

  FocusNode _focusNode = FocusNode();
  final List<String> _results = [];

  bool isTextFieldFocused = false;

  TextEditingController _searchController = TextEditingController();

  void _handleSearch(String input) {
    _results.clear();
    for (var str in myCoolStrings) {
      if (str.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _results.add(str);
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();

    // Tambahkan pemantauan pada _searchController
    getGame();
    _searchController.addListener(() {
      setState(
          () {}); // Memicu pembaharuan tampilan saat nilai _searchController berubah
    });
  }

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
                                  controller: _searchController,
                                  focusNode: _focusNode,
                                  onChanged: (value) {
                                    _handleSearch(value);
                                  },
                                  decoration: const InputDecoration(
                                    hintText: 'Cari...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            _focusNode.hasFocus
                                ? IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: () {
                                      setState(() {
                                        _searchController.text = '';
                                        _results.clear();
                                      });
                                    },
                                  )
                                : IconButton(
                                    icon: const Icon(Icons.search),
                                    onPressed: () {
                                      setState(() {
                                        _results.clear();
                                      });
                                    },
                                  ),
                          ],
                        ),
                      ),
                    ),
                    _results.isNotEmpty
                        ? Container(
                            height: MediaQuery.of(context).size.height *
                                0.1 *
                                _results.length,
                            child: ListView.builder(
                              itemCount: _results.length,
                              itemBuilder: (context, index) {
                                final data = _results[index];
                                return ListTile(
                                  leading: const Icon(Icons.list),
                                  title: Text(data),
                                );
                              },
                            ),
                          )
                        : Container(),
                    CarouselSlider(
                      items: imageUrls.map((url) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                url,
                                fit: BoxFit.cover,
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
                                        builder: (context) => DetailGamePage(
                                          listGameModel: _listGame[index],
                                        ),
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
                                        fit: BoxFit.cover,
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
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          itemCount: _listGame.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              child: Card(
                                child: ListTile(
                                  leading: Image(
                                    image: NetworkImage(
                                      _listGame[index].image.toString(),
                                    ),
                                  ),
                                  title: Text(
                                    _listGame[index].nama_produk.toString(),
                                  ),
                                  subtitle: Text(
                                    _listGame[index].pengembang.toString(),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailGamePage(
                                      listGameModel: _listGame[index],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
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
