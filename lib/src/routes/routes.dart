import 'package:safar/src/ui/screens/home/home.dart';

const kHomeScreen = '/home';

var routeMap = {
  '/': (context) => const HomeScreen(),
  kHomeScreen: (settings) => const HomeScreen(),
};
