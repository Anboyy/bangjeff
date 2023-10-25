import 'package:bangjeff/style/nominal_card.dart';
import 'package:flutter/material.dart';

class DetailGamePage extends StatefulWidget {
  const DetailGamePage({super.key});

  @override
  State<DetailGamePage> createState() => _DetailGamePageState();
}

class _DetailGamePageState extends State<DetailGamePage> {
  int selectedCardIndex = -1;

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/produk.jpeg"),
                        fit: BoxFit.fitHeight),
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
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                  ),
                                  child: Text(
                                    gameName,
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
                                    developerGame,
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
                                    gameDesc,
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                  ),
                                  child: Text(
                                    marketDesc,
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
                                          contentPadding: EdgeInsets.symmetric(
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
                                          fillColor: Color.fromARGB(
                                              250, 245, 235, 235),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
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
                                          fillColor: Color.fromARGB(
                                            250,
                                            245,
                                            235,
                                            235,
                                          ), // Warna latar belakang form
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Silahkan masukkan User ID dan Server Anda, serta pastikan data yang Anda isikan benar.",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                ),
                                const Text(
                                  "Pilih Nominal Top Up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Promo",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: NominalCard(),
                                    ),
                                    Expanded(
                                      child: NominalCard(),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Spesial Item",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: NominalCard(),
                                    ),
                                    Expanded(
                                      child: NominalCard(),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Top Up Cepat",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  child: GridView.builder(
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 2.5,
                                    ),
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      // Fungsi itemBuilder untuk membangun setiap item dalam grid
                                      return NominalCard();
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
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: const Text("Beli"),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
