import 'package:blue_open/src/pages/detail/detail_page.dart';
import 'package:blue_open/src/pages/home/home_page.dart';
import 'package:blue_open/src/service/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  //Services().fetchAccount();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      initialRoute: "/",
      routes: {
        "/": (_) => const HomePage(),
        "/detail": (BuildContext context) => const DetailPage(),
      },
    );
  }
}
