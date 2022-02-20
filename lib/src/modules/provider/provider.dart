import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../state_provider/state_provider.dart';

final provider =
    Provider.family.autoDispose<Map<String, String>, String>((ref, title) {
  final _counter = ref.watch(counterProvider);
  final _data = {
    'title': title,
    'description': 'A simple way to manage your state in Flutter',
    'author': 'Flutter Community',
    'version': '${_counter.counter}.0.0',
    'homepage': ''
  };
  return _data;
});
