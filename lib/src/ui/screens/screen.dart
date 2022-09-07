import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state.dart';
import 'view.dart';

abstract class Screen<T extends ScreenState, K extends ScreenView>
    extends StatefulWidget {
  const Screen({super.key});

  T buildState();

  K build(BuildContext context, T state);

  Future<void> init(BuildContext context, T state) async {}

  dispose(BuildContext context, T state) {}

  Widget buildLoading(BuildContext context, T state) => build(context, state);

  @override
  State<StatefulWidget> createState() => _ScreenWidgetState();
}

class _ScreenWidgetState<T extends ScreenState, K extends ScreenView>
    extends State<Screen<T, K>> {
  late final T state;

  @override
  void initState() {
    super.initState();
    state = widget.buildState();
    widget.init(context, state).then((_) => state.initialized = true);
  }

  @override
  void dispose() {
    super.dispose();
    state.dispose();
    widget.dispose(context, state);
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider.value(
        value: state,
        builder: (context, _) => Consumer<T>(
          builder: (context, value, child) => state.initialized
              ? widget.build(context, state)
              : widget.buildLoading(context, state),
        ),
      );
}
