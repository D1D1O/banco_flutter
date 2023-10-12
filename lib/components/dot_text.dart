import 'package:alubank/components/color_dot.dart';
import 'package:flutter/material.dart';

class DotText extends StatelessWidget {
  final Color? cor;
  final  texto;
  const DotText({super.key, required this.cor, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: ColorDot(color: cor),
        ),
        Text(texto)
      ],
    );
  }
}
