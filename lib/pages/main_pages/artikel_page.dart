import 'package:bangjeff/model/list_artikel_model.dart';
import 'package:bangjeff/pages/main_pages/detailed_pages/detailed_artikel.dart';
import 'package:bangjeff/service/list_artikel_service.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Artikel extends StatefulWidget {
  const Artikel({super.key});

  @override
  State<Artikel> createState() => _ArtikelState();
}

class _ArtikelState extends State<Artikel> {
  List<ListArtikelModel> _listArtikel = [];

  List<String> categories = const [
    "Impedit",
    "Edison McGlynn",
    "RPG",
    "MMO RPG",
    "HORROR",
    "ADVENTURE",
  ];

  List<String> selectedCategory = [];

  @override
  void initState() {
    super.initState();
    getArtikel(); // Call getGame during initialization.
  }

  // Declare getGame as an async method and await the asynchronous operation.
  Future<void> getArtikel() async {
    ListArtikelService _service = ListArtikelService();
    final value = await _service.getArtikelData();
    setState(() {
      _listArtikel = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final filterArtikel = _listArtikel.where((product) {
      // Menggunakan product.nama_produk sebagai elemen pembanding
      return selectedCategory.isEmpty ||
          selectedCategory.contains(product.title);
    }).toList();
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
                        child: InkWell(
                          child: CarouselSlider(
                            items: _listArtikel.map((item) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailedArtikel(
                                            artikelModel: item,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Card(
                                      elevation: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(
                                            flex: 9,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Image.network(
                                                  item.image.toString(),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8),
                                                child: Text("Game"),
                                              )),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child:
                                                  Text(item.title.toString()),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8),
                                              child: Text("2 Jam"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: categories
                                .map(
                                  (category) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                    ),
                                    child: FilterChip(
                                      selected:
                                          selectedCategory.contains(category),
                                      label: Text(category),
                                      onSelected: (selected) {
                                        setState(
                                          () {
                                            selected
                                                ? selectedCategory.add(category)
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
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          itemCount: filterArtikel.length,
                          itemBuilder: (context, index) {
                            final artikelList = filterArtikel[index];
                            return InkWell(
                              child: Card(
                                child: ListTile(
                                  leading: Image(
                                    image: NetworkImage(
                                      _listArtikel[index].image.toString(),
                                    ),
                                  ),
                                  title: Text(
                                    artikelList.title!
                                        .substring(0, 10)
                                        .toString(),
                                  ),
                                  subtitle: Text(
                                    artikelList.subtitle!
                                        .substring(0, 10)
                                        .toString(),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailedArtikel(
                                      artikelModel: artikelList,
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
