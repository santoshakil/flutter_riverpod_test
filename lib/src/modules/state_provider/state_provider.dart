import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) {
  return TestObject(0, 0);
});

class TestObject {
  final int counter;
  final int counter2;

  TestObject(this.counter, this.counter2);

  TestObject copyWith({int? counter, int? counter2}) {
    return TestObject(
      counter ?? this.counter,
      counter2 ?? this.counter2,
    );
  }
}
