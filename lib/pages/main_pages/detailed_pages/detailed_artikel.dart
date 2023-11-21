import 'package:bangjeff/model/list_artikel_model.dart';
import 'package:bangjeff/service/list_artikel_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailedArtikel extends StatefulWidget {
  final ListArtikelModel artikelModel;
  const DetailedArtikel({super.key, required this.artikelModel});

  @override
  State<DetailedArtikel> createState() => _DetailedArtikelState();
}

class _DetailedArtikelState extends State<DetailedArtikel> {
  List<ListArtikelModel> _listArtikel = [];

  @override
  void initState() {
    super.initState();
    getArtikel();
  }

  Future<void> getArtikel() async {
    ListArtikelService _service = ListArtikelService();
    final value = await _service.getArtikelData();
    setState(() {
      _listArtikel = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              widget.artikelModel.image.toString()),
                          fit: BoxFit.cover),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back_ios),
                              ),
                              Text('Detailed Article'),
                              IconButton(
                                onPressed: () {
                                  _showPaymentMethodMenu(context);
                                },
                                icon: const Icon(Icons.share),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      widget.artikelModel.title!
                                          .substring(0, 15)
                                          .toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      widget.artikelModel.subtitle!
                                          .substring(0, 15)
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      widget.artikelModel.deskripsi.toString(),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      widget.artikelModel.deskripsi.toString(),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPaymentMethodMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Modal hanya menyesuaikan dengan konten
      isDismissible: true, // Modal dapat dibuang dengan mengklik luar modal
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Bagikan Artikel"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildCircularIconButton(Icons.link, "Link"),
                    _buildCircularIconButton(Icons.facebook, "Facebook"),
                    _buildCircularIconButton(
                        FontAwesomeIcons.twitter, "Twitter"),
                    _buildCircularIconButton(
                        FontAwesomeIcons.linkedinIn, "LinkedIn"),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCircularIconButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 1.0,
                color: Colors
                    .grey), // Ganti warna dan ketebalan border sesuai kebutuhan
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
            ),
          ),
        ),
        SizedBox(height: 8), // Jarak antara ikon dan teks
        Text(label),
      ],
    );
  }
}
