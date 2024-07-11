import 'package:flutter/material.dart';
import 'package:marketplace/provider/dashboard/dashboard_provider.dart';
import 'package:marketplace/theme.dart';
import 'package:provider/provider.dart';

import 'route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DashboardProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Marketplace',
        theme: themeData,
        routerDelegate: route.routerDelegate,
        routeInformationParser: route.routeInformationParser,
        routeInformationProvider: route.routeInformationProvider,
      ),
    );
  }
}
