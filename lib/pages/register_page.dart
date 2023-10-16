import 'package:bangjeff/pages/login_page.dart';
import 'package:bangjeff/pages/main_pages/dashboard.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool __obscurePassword = false;
  bool __obscurePassword2 = false;
  bool isChecked = false;

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
                            "Daftar",
                            style: kFontH1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            top: 10.0,
                          ),
                          child: Text(
                            "Mohon masukan informasi yang valid.",
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
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
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
                                      Icons.person,
                                      color: Colors.red,
                                    ),
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
                                    fillColor: Colors
                                        .transparent, // Warna latar belakang form
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
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
                                      FontAwesomeIcons.at,
                                      color: Colors.red,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical:
                                          15, // Ukuran teks label yang lebih kecil
                                      horizontal:
                                          20, // Perkecil ukuran TextFormField
                                    ),
                                    hintText: 'Masukkan Username', // Teks hint
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
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
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
                                      Icons.email,
                                      color: Colors.red,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical:
                                          15, // Ukuran teks label yang lebih kecil
                                      horizontal:
                                          20, // Perkecil ukuran TextFormField
                                    ),
                                    hintText:
                                        'Masukkan alamat Email', // Teks hint
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
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
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
                                        'Masukkan Nomor Telephone', // Teks hint
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
                          Padding(
                            padding: const EdgeInsets.all(0),
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
                                  obscureText:
                                      __obscurePassword2 ? true : false,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: __obscurePassword2
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          __obscurePassword2 =
                                              !__obscurePassword2;
                                        });
                                      },
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.key,
                                      color: Colors.red,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical:
                                          15, // Ukuran teks label yang lebih kecil
                                      horizontal:
                                          20, // Perkecil ukuran TextFormField
                                    ),
                                    hintText:
                                        'Masukkan Kata Sandi', // Teks hint
                                    hintStyle: const TextStyle(
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
                          Padding(
                            padding: const EdgeInsets.all(0),
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
                                  obscureText: __obscurePassword ? true : false,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: __obscurePassword
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          __obscurePassword =
                                              !__obscurePassword;
                                        });
                                      },
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.key,
                                      color: Colors.red,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical:
                                          15, // Ukuran teks label yang lebih kecil
                                      horizontal:
                                          20, // Perkecil ukuran TextFormField
                                    ),
                                    hintText:
                                        'Konfirmasi Kata Sandi', // Teks hint
                                    hintStyle: const TextStyle(
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
                          ListTile(
                            leading: Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            title: Text(
                              'Dengan mendaftar, anda berarti menyetujui kebijakan ketentuan layanan dan kebijakan privasi',
                              style: TextStyle(
                                fontSize: 12.5,
                                color: Colors.red[300],
                              ),
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.03),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Dashboard(),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: Text("Daftar Sekarang"),
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
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Sudah punya akun?",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              " Login",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                          )
                        ],
                      ),
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
