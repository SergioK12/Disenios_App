import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icondata: Icons.alarm, texto: "Alarma"),
          _SingleCard(
              color: Colors.grey, icondata: Icons.transcribe, texto: "Sordo"),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.red,
              icondata: Icons.accessibility_new_rounded,
              texto: "Hombres"),
          _SingleCard(
              color: Colors.pink, icondata: Icons.woman, texto: "Mujeres"),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.green, icondata: Icons.shop, texto: "Tienda"),
          _SingleCard(
              color: Colors.yellow,
              icondata: Icons.soup_kitchen_outlined,
              texto: "Sopas"),
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.indigo,
              icondata: Icons.add_a_photo,
              texto: "Fotos"),
          _SingleCard(
              color: Colors.teal,
              icondata: Icons.minor_crash_sharp,
              texto: "Autos"),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard(
      {required this.icondata, required this.texto, required this.color});

  final IconData icondata;
  final String texto;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          minRadius: 40.0,
          backgroundColor: color,
          child: Icon(
            icondata,
            color: Colors.white,
            size: 50,
          ),
        ),
        Text(
          texto,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(62, 67, 107, 0.7)),
            child: child,
          ),
        ),
      ),
    );
  }
}
