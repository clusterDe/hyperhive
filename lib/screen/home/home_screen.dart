import 'package:flutter/material.dart';
import 'components/home_body.dart';
import 'components/searchbar_section.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          'assets/icons/Logo.png',
          scale: 4,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SearchBardSection(),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
