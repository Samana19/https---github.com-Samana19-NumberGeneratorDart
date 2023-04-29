import 'package:flutter/material.dart';
import 'package:number_generator/views/dashboard_view.dart';
import 'package:number_generator/views/number_generator_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const DashboardScreen(),
      '/number': (context) => const MyApp(),
    });
  }
}
