import 'package:flutter/material.dart';

import '../../widgets/map/map.dart';
import '../view.dart';

class HomeView extends ScreenView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Safar'),
      ),
      body: const MapView(),
    );
  }
}
