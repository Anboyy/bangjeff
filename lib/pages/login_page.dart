import 'package:bangjeff/pages/lupa_password.dart';
import 'package:bangjeff/pages/main_pages/dashboard.dart';
import 'package:bangjeff/pages/register_page.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool __obscurePassword = false;
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
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
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
                            "Masuk",
                            style: kFontH1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            top: 10.0,
                          ),
                          child: Text(
                            "Masuk dengan akun yang terdafter.",
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
                                      Icons.person,
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
                                      !__obscurePassword ? true : false,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      icon: !__obscurePassword
                                          ? const Icon(Icons.visibility)
                                          : const Icon(Icons.visibility_off),
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
                                    hintText: 'Masukkan Password', // Teks hint
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
                          Row(
                            children: [
                              const Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const LupaPassword(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Lupa kata sandi?",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Dashboard(),
                                ),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 16.0,
                              ),
                              child: Text("Login"),
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
                          "Sudah punya akun?",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        GestureDetector(
                          child: const Text(
                            " Daftar Sekarang",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterPage(),
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
