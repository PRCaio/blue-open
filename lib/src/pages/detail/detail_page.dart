import 'package:flutter/material.dart';
import 'dart:math';

import 'package:intl/intl.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> monthModel = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gastos'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: monthModel.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildPlayerModelList(monthModel[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPlayerModelList(int items) {
    Random random = Random();
    int randomNumber = random.nextInt(100);
    items = randomNumber;
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MMMM');
    final String formatted = formatter.format(now);
    print(formatted);

    return Card(
      child: ExpansionTile(
        title: Text(
          items.toString(),
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: [
          ListTile(
            title: Text(
              items.toString(),
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
