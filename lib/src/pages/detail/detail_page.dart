import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _currentPage = 0;

  final _controller = PageController(initialPage: 0);
  final _duration = const Duration(milliseconds: 300);
  final _curve = Curves.easeInOutCubic;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> monthModel = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    //datestrings.sort((a, b) {
    //sorting in ascending order
    //var c = a.date;
    //var d = b.date;
    //return DateTime.parse(c).compareTo(DateTime.parse(d));
    //});

    //print(datestrings);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gastos'),
      ),
      body: _buildPlayerModelList(),
    );
  }

  Widget _buildPlayerModelList() {
    // Random random = Random();
    // int randomNumber = random.nextInt(100);
    // items = randomNumber;
    // final DateTime now = DateTime.now();
    // final DateFormat formatter = DateFormat('MMMM');
    // final String formatted = formatter.format(now);
    // // log(formatted.toString());

    return Card(
      elevation: 9,
      child: PieChart(
        PieChartData(
          centerSpaceRadius: 10,
          borderData: FlBorderData(show: true),
          pieTouchData: PieTouchData(enabled: true),
          sections: [
            PieChartSectionData(value: 10, color: Colors.purple, radius: 100),
            PieChartSectionData(value: 20, color: Colors.amber, radius: 110),
            PieChartSectionData(value: 30, color: Colors.green, radius: 120)
          ],
        ),
        swapAnimationDuration: const Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      ),
    );
  }
}
