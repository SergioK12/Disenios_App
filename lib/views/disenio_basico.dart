import 'package:flutter/material.dart';

class DesignApp extends StatelessWidget {
  const DesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diseño"),
      ),
      body: Column(
        children: [
          const Image(image: AssetImage("assets/paisaje.jpg")),
          const _Title(),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                IconText(icono: Icons.share, texto: "Compartir"),
                IconText(icono: Icons.cabin,texto: "Call",                ),
                IconText(icono: Icons.place_rounded, texto: "Lugar"),
              ],
            ),
          ),
          Container(padding: const  EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: const Text("La serie está basada en un one-shot que Kishimoto realizó en agosto de 1996 para la revista Akamaru Jump.3​ A partir de noviembre de 1999, Naruto es publicado por la editorial Shūeisha en la revista semanal japonesa Shōnen Jump,4​ siendo recopilado desde entonces en setenta y dos volúmenes.",))
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icono;
  final String texto;

  const IconText({
    Key? key,
    required this.icono,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
        ),
        const Text("Call")
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Este es un texto de prueba",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Que paso master deberia ser diferente",
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("41")
        ],
      ),
    );
  }
}
