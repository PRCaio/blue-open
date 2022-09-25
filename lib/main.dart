import 'package:blue_open/src/pages/extract/extract_page.dart';
import 'package:blue_open/src/pages/home/home_page.dart';
import 'package:blue_open/src/providers/extract_provider.dart';
import 'package:blue_open/src/providers/home_provider.dart';
import 'package:blue_open/src/tools/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  // Services().fetchAccount();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ExtractProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        routes: {
          AppRoutes.home: (ctx) => const HomePage(),
          AppRoutes.extract: (ctx) => const ExtractPage(),
        },
      ),
    );
  }
}
