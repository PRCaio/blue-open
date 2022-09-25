import 'package:blue_open/src/pages/extract/extract_page.dart';
import 'package:blue_open/src/pages/home/home_page.dart';
import 'package:blue_open/src/providers/extract_provider.dart';
import 'package:blue_open/src/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  //Services().fetchAccount();
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        // initialRoute: "/home",
        routes: {
          AppRoutes.HOME: (ctx) => const HomePage(),
          AppRoutes.EXTRACT: (ctx) => const ExtractPage(),
        },
      ),
    );
  }
}
