import 'package:flutter/material.dart';
import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(), // 앱 시작 시 보여줄 화면
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DE),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              '내일배움캠프',
              style: TextStyle(
                fontFamily: 'Inter_18pt-Regular-400',
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'FLUTTER 앱개발',
              style: TextStyle(
                fontFamily: 'Inter_18pt-Black-900',
                fontWeight: FontWeight.w900,
                fontSize: 38,
              ),
            ),
            const SizedBox(height: 35),
            Image.asset('assets/bg_main.png', width: 150, height: 150),
            const SizedBox(height: 29),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9060),
                foregroundColor: Colors.white,
                shadowColor: Colors.transparent,
                elevation: 0,
                fixedSize: Size(200, 50),
              ),
              child: const Text(
                '시작하기',
                style: TextStyle(
                  fontFamily: 'Inter_18pt-Bold-700',
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
