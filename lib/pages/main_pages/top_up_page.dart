import 'package:flutter/material.dart';
import 'package:bangjeff/style/fontStyle.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
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
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
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
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.1,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Semua'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Semua'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Semua'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Semua'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Semua'),
                                )
                              ]),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Jumlah kolom
                            crossAxisSpacing: 20.0, // Spasi antar kolom
                            mainAxisSpacing: 20.0, // Spasi antar baris
                          ),
                          itemCount: imageUrls.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        imageUrls[index],
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("_nama_game"),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text("_nama Pengembang"),
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
    );
  }
}
