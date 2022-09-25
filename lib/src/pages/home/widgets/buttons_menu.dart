import 'package:blue_open/src/pages/home/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class ButtonsMenu extends StatelessWidget {
  const ButtonsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleButton(desc: "Depositar", msg: "Teste snackbar realizado! -1", icone: Icons.savings_rounded),
        CircleButton(desc: "Pagar", msg: "Teste snackbar realizado! -2", icone: Icons.qr_code),
        CircleButton(
          desc: "Transferir",
          msg: "Teste snackbar realizado! -3",
          icone: Icons.send_to_mobile_outlined,
        ),
        CircleButton(
          desc: "Empréstimo",
          msg: "Teste snackbar realizado! -4",
          icone: Icons.shop_2_rounded,
        ),
      ],
    );
  }
}
