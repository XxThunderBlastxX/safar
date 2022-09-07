import 'package:flutter/material.dart';

import 'routes/routes.dart';
import 'ui/screens/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Safar",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        kHomeScreen: (context) => const HomeScreen(),
      },
    );
  }
}
