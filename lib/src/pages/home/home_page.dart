import 'package:blue_open/src/pages/home/widgets/home_drawer.dart';
import 'package:blue_open/src/pages/home/widgets/items_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  //Classe principal, só passa um state e ja era
  @override
  State<HomePage> createState() => _HomePageState();
}

// configura o bottomMenu e os indices dele
class _HomePageState extends State<HomePage> {
  // Widget do menu de baixo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blue Open"),
      ),
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            Container(
              alignment: Alignment.centerLeft,
              child: const ItemsHome(),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
