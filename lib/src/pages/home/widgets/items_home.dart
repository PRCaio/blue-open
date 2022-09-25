import 'package:blue_open/src/pages/home/widgets/buttons_menu.dart';
import 'package:blue_open/src/tools/app_routes.dart';
import 'package:flutter/material.dart';

class ItemsHome extends StatelessWidget {
  const ItemsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text('balance: 500,00, savedMoney: 3500,00'),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 32.0, left: 13),
              child: Icon(Icons.auto_graph_rounded, size: 30),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 24.0, right: 240.0),
                  child: Text('Rendimento', style: TextStyle(fontSize: 16.0)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 236.0),
                  child: Text(' + R\$ 3,50', style: TextStyle(fontSize: 24.0, color: Colors.green[600])),
                ),
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: ButtonsMenu(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Card(
            child: ListTile(
              leading: const Icon(Icons.pie_chart, size: 40),
              title: const Text('Extratos'),
              subtitle: const Text('Clique para acessar'),
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.extract);
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Card(
            child: ListTile(
              leading: const Icon(Icons.attach_money, size: 40),
              title: const Text('Limite de empréstimo'),
              subtitle: const Text('R\$ 20.000,00'),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
