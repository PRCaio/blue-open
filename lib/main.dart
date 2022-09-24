import 'package:blue_open/src/pages/home/home_page.dart';
import 'package:blue_open/src/service/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  Services().fetchAccount();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
