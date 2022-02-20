import 'package:flutter/material.dart';

import 'modules/provider/view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderView();
  }
}

// Provider :: Cache
// StateProvider :: Watch Data to reload State
// StateNotifierNotifier :: Watch Data to reload State

// FutureProvider :: Future Data Cache
// StreamProvider :: Stream Cache
