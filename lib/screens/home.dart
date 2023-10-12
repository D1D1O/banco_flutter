import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/sections/account_actions.dart';
import 'package:alubank/components/sections/account_points.dart';
import 'package:alubank/components/sections/header.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bem vindo Giovanny',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: ListView.builder(itemBuilder: (BuildContext context,int index){
          return Column(
            children: [
              Header(),
              RecentActivity(),
              AccountActions(),
              AccountPoints()
            ],
          );
        })

      ),
    );
  }
}

/*
* Column(

          children: <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoints()
          ],
        ),
* */