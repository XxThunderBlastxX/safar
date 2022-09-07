import 'package:flutter/cupertino.dart';

abstract class ScreenState extends ChangeNotifier {
  bool _initialized = false;

  bool get initialized => _initialized;

  set initialized(bool init) {
    _initialized = init;
    notifyListeners();
  }
}
