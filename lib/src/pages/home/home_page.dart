import 'package:blue_open/src/pages/home/widgets/carousel_slider.dart';
import 'package:blue_open/src/pages/home/widgets/home_drawer.dart';
import 'package:blue_open/src/service/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
