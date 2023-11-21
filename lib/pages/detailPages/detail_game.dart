import 'package:bangjeff/model/list_game_model.dart';
import 'package:bangjeff/pages/main_pages/detailed_pages/detail_buy.dart';
import 'package:bangjeff/style/nominal_card.dart';
import 'package:flutter/material.dart';

class DetailGamePage extends StatefulWidget {
  final ListGameModel listGameModel;
  const DetailGamePage({super.key, required this.listGameModel});

  @override
  State<DetailGamePage> createState() => _DetailGamePageState();
}

enum pembayaran { promo1, promo2, special1, special2 }

class _DetailGamePageState extends State<DetailGamePage> {
  int selectedCardIndex = -1;
  bool isClicked = false;
  int selectedItemIndex = -1;

  final List<String> items = List<String>.generate(4, (i) => 'Item ${i + 1}');
  final String gameName = "Mobile Legend";

  final String developerGame = "Moontoon";

  final String gameDesc =
      "Mobile Legends adalah permainan video mobile yang populer berbasis MOBA (Multiplayer Online Battle Arena) yang dikembangkan dan diterbitkan oleh Moonton.";

  final String marketDesc =
      "Top up ML diamond Mobile Legends harga paling murah, aman, cepat, dan terpercaya hanya di BANGJEFF. Cara topup MLBB via ID termurah cukup dengan memasukkan ID (Server) dan lakukan pembayaran, secara otomatis diamond masuk ke akun Anda.\n * Waktu proses 1-10 detik (setelah pembayaran diterima)\n * Layanan top up open 24 Jam Non Stop\n * Bantuan chat WhatsApp open 24 jam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      child: Image.network(
                        widget.listGameModel.image.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.listGameModel.image.toString(),
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3),
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
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                      ),
                                      child: Text(
                                        widget.listGameModel.nama_produk
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
                                        widget.listGameModel.pengembang
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
                                        widget.listGameModel.deskripsi
                                            .toString(),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 4,
                                      ),
                                      child: Text(
                                        widget.listGameModel.deskripsi
                                            .toString(),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Masukan User ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical:
                                                      15, // Ukuran teks label yang lebih kecil
                                                  horizontal:
                                                      20, // Perkecil ukuran TextFormField
                                                ),
                                                hintText:
                                                    'Masukan nama lengkap', // Teks hint
                                                hintStyle: TextStyle(
                                                  fontSize:
                                                      14, // Ukuran teks hint yang lebih kecil
                                                ),
                                                border: InputBorder
                                                    .none, // Hilangkan border bawaan
                                                filled: true,
                                                fillColor: Colors.black38),
                                          ),
                                        ),
                                        Expanded(
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                  vertical:
                                                      15, // Ukuran teks label yang lebih kecil
                                                  horizontal:
                                                      20, // Perkecil ukuran TextFormField
                                                ),
                                                hintText:
                                                    'Masukan nama lengkap', // Teks hint
                                                hintStyle: TextStyle(
                                                  fontSize:
                                                      14, // Ukuran teks hint yang lebih kecil
                                                ),
                                                border: InputBorder
                                                    .none, // Hilangkan border bawaan
                                                filled: true,
                                                fillColor: Colors.black38),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Text(
                                        "Silahkan masukkan User ID dan Server Anda, serta pastikan data yang Anda isikan benar.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    const Text(
                                      "Pilih Nominal Top Up",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Promo",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        Expanded(
                                          child: NominalCard(),
                                        ),
                                        Expanded(
                                          child: NominalCard(),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Spesial Item",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        Expanded(
                                          child: NominalCard(),
                                        ),
                                        Expanded(
                                          child: NominalCard(),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Top Up Cepat",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5,
                                      child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 2.5,
                                        ),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                              onTap: () {
                                                selectedItemIndex = index;
                                              },
                                              child: const NominalCard());
                                        },
                                      ),
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
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: const Text("Beli"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BuyDetail(),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
