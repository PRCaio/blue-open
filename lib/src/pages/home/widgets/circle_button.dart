import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String? desc;
  final String? msg;
  final IconData? icone;

  const CircleButton({super.key, this.desc, this.msg, this.icone});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: FloatingActionButton(
            onPressed: () {
              // Scaffold.of(context).showSnackBar(SnackBar(content: Text(msg!)));

              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) {
              //   return Formulario_Transferencia();
              // }));
            },
            tooltip: desc,
            child: Icon(icone),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(desc!, style: const TextStyle(fontSize: 16.0)),
        ),
      ],
    );
  }
}
