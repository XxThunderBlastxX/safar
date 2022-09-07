import 'package:flutter/material.dart';

import '../view.dart';

class HomeView extends ScreenView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Home Screen'),
        ),
      );
}
