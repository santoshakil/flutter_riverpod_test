import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'state_provider.dart';

class StateProviderView extends ConsumerWidget {
  const StateProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            final _ref =
                ref.watch(counterProvider.select((value) => value.counter));
            // ignore: avoid_print
            print('counter');
            return Text(_ref.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final _state = ref.read(counterProvider.state);
          _state.state =
              _state.state.copyWith(counter: _state.state.counter + 1);
        },
      ),
    );
  }
}
