import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/dot_text.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(
            boxContent: _accountPoints(),
          )
        ],
      ),
    );
  }
}

class _accountPoints extends StatelessWidget {
  const _accountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Pontos totais'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
        ),
        ContentDivision(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            'Objetivos',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: DotText(
              cor: ThemeColors.recentActivity['income'],
              texto: 'Entrega grátis: 15000 pts'),
        ),
        DotText(
            cor: ThemeColors.recentActivity['spentMore'],
            texto: '1 mês de streaming: 30000 pts'),

        //ThemeColors.recentActivity['spent']
      ],
    );
  }
}
