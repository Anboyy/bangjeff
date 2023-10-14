import 'package:bangjeff/pages/login_page.dart';
import 'package:bangjeff/style/fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/images/intro1.png"),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 8),
                child: Text(
                  "Harga paling murah se Indonesia dan ramah dikantong",
                  style: kFontTitle,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Text(
                  "Harga termurah se-Indonesia, aman dikantong pelajar, tidak perlu resah! Bebas pilih mau top up yang mana sesukamu!",
                  style: kFontSubtitle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/images/intro2.png"),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 8),
                child: Text(
                  "Pengiriman sangat cepat dan aman, tidak menunggu lama",
                  style: kFontTitle,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Text(
                  "Dijamin pengiriman sangat cepat, secepat kedipan mata, kalian transfer langsung sampai, jangan khawatir jangan risau!",
                  style: kFontSubtitle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image(
                  image: AssetImage("assets/images/intro3.png"),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 8),
                child: Text(
                  "Bayar bisa pakai apa aja dan lengkap! ",
                  style: kFontTitle,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Text(
                  "Pembayaran lengkap, melalui e-wallet maupun transfer bank, semakin banyak pilihan metode pembayaran yang membuatmu lebih gampang!",
                  style: kFontSubtitle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
      showBackButton: true,
      back: Text("sebelumnya"),
      skip: const Icon(Icons.skip_next),
      next: const Text("Selanjutnya"),
      done: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.red,
      ),
      nextStyle: kTextButtonStyle1,
      backStyle: kTextButtonStyle2,
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.red,
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
