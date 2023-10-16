import 'package:bangjeff/pages/introduction_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          '/', // Rute awal, bisa diganti dengan rute lain jika diperlukan
      routes: {
        '/': (context) => SplashScreen(), // Rute untuk splash screen
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // bool isLoading = false;

  @override
  void initState() {
    super.initState();
    // Timer untuk menunggu 1 detik sebelum menampilkan CircularProgressIndicator
    // Future.delayed(Duration(seconds: 1), () {
    //   setState(() {
    //     isLoading = true;
    //   });
    // });
    // Timer untuk menunggu beberapa detik sebelum berpindah ke halaman dashboard
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Warna latar belakang splash screen
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE54649),
              Color(0xFF1E1E1E),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: MediaQuery.of(context).size.width * 0.25,
                image: AssetImage('assets/images/logo.png'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
