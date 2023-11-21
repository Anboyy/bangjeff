import 'package:bangjeff/pages/introduction_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData baseTheme = ThemeData.light();
    ThemeData redTheme = baseTheme.copyWith(
      primaryColor: Colors.red,
      primaryColorLight: Colors.red,
      appBarTheme: baseTheme.appBarTheme.copyWith(
        backgroundColor: Colors.red, // Atur warna AppBar di sini
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, // Atur warna ElevatedButton di sini
        ),
      ),
    );
    return MaterialApp(
      theme: redTheme,
      debugShowCheckedModeBanner: false,
      initialRoute:
          '/', // Rute awal, bisa diganti dengan rute lain jika diperlukan
      routes: {
        '/': (context) => const SplashScreen(), // Rute untuk splash screen
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // bool isLoading = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
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
                image: const AssetImage('assets/images/logo.png'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
