import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
        children: [
          TableRow(
              children: [
                _SingleCardTable(color: Colors.blue, iconData: Icons.border_all, title: "General"),
                _SingleCardTable(color: Colors.blue, iconData: Icons.border_all, title: "General")
              ]
          )
        ]
    );
  }
}

class _SingleCardTable extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String title;

  const _SingleCardTable(
      {Key? key,
        required this.iconData,
        required this.color,
        required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(this.iconData, size: 35, color: Colors.white),
                        radius: 30
                    ),
                    SizedBox(height: 30),
                    Text(
                        '${title}', style: TextStyle(color: this.color, fontSize: 18))

                  ]
              )
          ),
        ),
      ),
    );
  }
}