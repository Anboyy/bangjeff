import 'package:bangjeff/model/list_game_model.dart';
import 'package:bangjeff/service/list_game_service.dart';
import 'package:flutter/material.dart';
import 'package:bangjeff/style/fontStyle.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  List<ListGameModel> _listgame = [];

  List<String> categories = const [
    "Hellen Barton",
    "Edison McGlynn",
    "RPG",
    "MMO RPG",
    "HORROR",
    "ADVENTURE",
  ];

  List<String> selectedCategory = [];

  bool shouldScrollParent = true; // Variable untuk mengontrol guliran parent
  final ScrollController _scrollController = ScrollController();
  bool canScroll = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if ((_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent) ||
          (_scrollController.position.pixels ==
              _scrollController.position.minScrollExtent)) {
        canScroll = true;
      } else {
        canScroll = false;
      }
    });
    getGame();
  }

  Future<void> getGame() async {
    ListGameService _service = ListGameService();
    final value = await _service.getGameData();
    setState(() {
      _listgame = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filterGame = _listgame.where((product) {
      // Menggunakan product.nama_produk sebagai elemen pembanding
      return selectedCategory.isEmpty ||
          selectedCategory.contains(product.nama_produk);
    }).toList();
    return SafeArea(
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification is OverscrollNotification) {
              // Cek jika pengguna mencoba menggulir lebih jauh ke atas
              if (notification.overscroll < 0) {
                shouldScrollParent = true;
              } else {
                shouldScrollParent = false;
              }
            }
            return false;
          },
          child: SingleChildScrollView(
            physics: shouldScrollParent
                ? ClampingScrollPhysics()
                : NeverScrollableScrollPhysics(),
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
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Mari Top Up",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
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
                                      onChanged: (value) {},
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
                              itemCount: _listgame.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        margin: EdgeInsets.all(8.0),
                                        child: Image.network(
                                          _listgame[index].image.toString(),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      _listgame[index].nama_produk.toString(),
                                      style: kFontSubtitle,
                                    ),
                                    Text(_listgame[index].pengembang.toString())
                                  ],
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 9.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width * 0.1,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: categories
                                      .map(
                                        (category) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6),
                                          child: FilterChip(
                                            selected: selectedCategory
                                                .contains(category),
                                            label: Text(category),
                                            onSelected: (selected) {
                                              setState(
                                                () {
                                                  print(filterGame);
                                                  selected
                                                      ? selectedCategory
                                                          .add(category)
                                                      : selectedCategory
                                                          .remove(category);
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                      .toList()),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: GridView.builder(
                              controller: _scrollController,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.0,
                                mainAxisSpacing: 20.0,
                              ),
                              itemCount: filterGame.length,
                              itemBuilder: (context, index) {
                                final gameList = filterGame[index];
                                return InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            gameList.image.toString(),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          gameList.nama_produk.toString(),
                                          // _listgame[index]
                                          //     .nama_produk
                                          //     .toString(),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          gameList.pengembang.toString(),
                                        ),
                                      ),
                                    ],
                                  ),
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
        ),
      ),
    );
  }
}
