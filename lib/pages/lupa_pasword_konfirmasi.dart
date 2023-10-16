import 'package:bangjeff/pages/register_page.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KonfirmasiLupa extends StatefulWidget {
  const KonfirmasiLupa({super.key});

  @override
  State<KonfirmasiLupa> createState() => _KonfirmasiLupaState();
}

class _KonfirmasiLupaState extends State<KonfirmasiLupa> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  int otpLength = 6; // Jumlah kotak OTP

  @override
  void initState() {
    super.initState();
    _focusNodes = List<FocusNode>.generate(otpLength, (index) => FocusNode());
    _controllers = List<TextEditingController>.generate(
        otpLength, (index) => TextEditingController());

    for (int i = 0; i < otpLength; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.isNotEmpty && i < otpLength - 1) {
          _focusNodes[i].unfocus();
          _focusNodes[i + 1].requestFocus();
        }
      });
    }
  }

  @override
  void dispose() {
    for (int i = 0; i < otpLength; i++) {
      _controllers[i].dispose();
      _focusNodes[i].dispose();
    }
    super.dispose();
  }

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
                          const Padding(
                            padding: EdgeInsets.only(top: 16.0, bottom: 24.0),
                            child: Text(
                              "Masukkan kode OTP yang terkirim pada nomor Whatsapp Anda.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A5A60),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              otpLength,
                              (index) => Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black26),
                                  width: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        counterStyle: TextStyle(
                                          height: double.minPositive,
                                        ),
                                        counterText: ""),
                                    controller: _controllers[index],
                                    focusNode: _focusNodes[index],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    onChanged: (value) {
                                      if (value.isNotEmpty) {
                                        if (index < otpLength - 1) {
                                          _focusNodes[index].unfocus();
                                          _focusNodes[index + 1].requestFocus();
                                        } else {
                                          _focusNodes[index].unfocus();
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24),
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
                              "Belum menerima kode OTP?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF5A5A60),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: const Text(
                              "Kirim Ulang Kode",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
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
