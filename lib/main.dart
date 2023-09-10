import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/view/home/getstart.dart';
import 'package:flutter_ecommerce/view/navigation/bottomnavigation.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: Defaultfire);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
        primaryColor: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const GetStart(),
      },
      home: const BottomNavigation(),
    );
  }
}

