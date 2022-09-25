import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ExtractPage extends StatefulWidget {
  const ExtractPage({super.key});

  @override
  State<ExtractPage> createState() => _ExtractPageState();
}

class _ExtractPageState extends State<ExtractPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Gastos'),
      ),
      body: SingleChildScrollView(child: _buildPlayerModelList()),
    );
  }

  Widget _buildPlayerModelList() {
    return Card(
        elevation: 9,
        child: Column(
          children: [
            const Text("alou"),
            Expanded(
              child: PieChart(
                PieChartData(
                  centerSpaceRadius: 40,
                  borderData: FlBorderData(show: true),
                  pieTouchData: PieTouchData(enabled: true),
                  sections: [
                    PieChartSectionData(value: 10, color: Colors.purple, radius: 70),
                    PieChartSectionData(value: 20, color: Colors.amber, radius: 80),
                    PieChartSectionData(value: 30, color: Colors.green, radius: 90)
                  ],
                ),
                swapAnimationDuration: const Duration(milliseconds: 150), // Optional
                swapAnimationCurve: Curves.linear, // Optional
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ExtractPage()),
                      );
                    },
                    child: const Text('Detalhar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ExtractPage()),
                      );
                    },
                    child: const Text('Cupons'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
