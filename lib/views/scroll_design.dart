import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: decoracion(),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [Page1(), Page2()],
        ),
      )
    );
  }

  BoxDecoration decoracion() {
    return const BoxDecoration(

        gradient: LinearGradient(
          stops: [0.5, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff5EE8C5), Color(0xff30BAD6)]));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BaD6),
      child: Center(
        child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff0098FA),
                shape: const StadiumBorder()),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Bienvenido",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [Background(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            "11°",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
          ),
          const Text(
            "Miercoles",
            style: TextStyle(),
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.arrow_downward,
            size: 60,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BaD6),
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage("assets/scroll-1.png")));
  }
}
