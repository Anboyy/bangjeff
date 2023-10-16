import 'package:bangjeff/pages/lupa_pasword_konfirmasi.dart';
import 'package:bangjeff/pages/register_page.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';

class LupaPassword extends StatefulWidget {
  const LupaPassword({super.key});

  @override
  State<LupaPassword> createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            top: 10.0,
                          ),
                          child: Text(
                            "Lupa Kata Sandi",
                            style: kFontH1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            top: 10.0,
                          ),
                          child: Text(
                            "Masukan nomor Whatsapp anda.",
                            style: kFontH2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Card(
                              elevation:
                                  5, // Tingkat elevasi (mengatur efek mengambang)
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(15), // Rounded
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      color: Colors.red,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical:
                                          15, // Ukuran teks label yang lebih kecil
                                      horizontal:
                                          20, // Perkecil ukuran TextFormField
                                    ),
                                    hintText:
                                        'Masukkan Nomor Telepon/Whatsapp', // Teks hint
                                    hintStyle: TextStyle(
                                      fontSize:
                                          14, // Ukuran teks hint yang lebih kecil
                                    ),
                                    border: InputBorder
                                        .none, // Hilangkan border bawaan
                                    filled: true,
                                    fillColor: Colors
                                        .transparent, // Warna latar belakang form
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KonfirmasiLupa(),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: Text("Kirim Kode OTP"),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                              vertical: 15.0,
                            ),
                            child: Text(
                              "Kode OTP akan dikirimkan ke nomer Whatsapp, pastikan cek Whatsapp setelah anda menekan kirim.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A5A60),
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Menyerah karena lupa?",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            " Daftar Sekarang",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
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
