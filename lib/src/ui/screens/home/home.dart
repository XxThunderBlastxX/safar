import 'package:flutter/cupertino.dart';

import '../screen.dart';
import 'home_state.dart';
import 'home_view.dart';

class HomeScreen extends Screen<HomeState, HomeView> {
  const HomeScreen({super.key});

  @override
  HomeView build(BuildContext context, HomeState state) => const HomeView();

  @override
  HomeState buildState() => HomeState();
}
