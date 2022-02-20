import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_test/src/modules/state_provider/state_provider.dart';

import 'provider.dart';

class ProviderView extends ConsumerWidget {
  const ProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            return Text(ref.watch(provider('Title Riverpod')).toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final _state = ref.read(counterProvider.state);
          _state.state = _state.state.copyWith(
            counter: _state.state.counter + 1,
          );
        },
      ),
    );
  }
}
