import 'package:flutter/material.dart';

class PageTittle extends StatelessWidget {
  const PageTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric( horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Clasificaciones de transacciones", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
            SizedBox(height: 10),
            Text("Hola sergiok12",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}