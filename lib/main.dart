import 'package:flutter/material.dart';
import 'views/views.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll',
      routes: {
        'DesignApp':(context) => const DesignApp(),
        'scroll':(context) => const ScrollScreen(),
      },
      
    );
  }
}