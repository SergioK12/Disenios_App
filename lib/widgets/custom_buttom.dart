import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const  Color.fromRGBO(55, 57, 54, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calendario"),
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline), label: "Grafica"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Usuarops"),
      ],
    );
  }
}