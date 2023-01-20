import 'package:disenios_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: const [
        BackgroundW(),
        _HomeBody(),
        
      ],
    ),
    bottomNavigationBar: const CustomNavigation(),);
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTittle(),
          CardTable(),
        ],
      )
    );
  }
}
