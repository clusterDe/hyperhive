// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:marketplace/screen/dashboard/components/bottom_navbar.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = '/';
  const DashboardScreen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
