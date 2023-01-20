import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'views/views.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.grey
    ));
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'Home',
      routes: {
        'DesignApp':(context) => const DesignApp(),
        'scroll':(context) => const ScrollScreen(),
        'Home':(context) => const HomeScreen(),
      },
      
    );
  }
}