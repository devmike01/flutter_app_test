import 'package:flutter_app_test/features/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing App provider model', () {
    var counter = Counter();

    test('Counter is being increased', () {
      counter.increment();
      expect(counter.counter, 1);
    });

    test("Test decrement", () {
      counter.decrement();
      counter.decrement();
      counter.decrement();
      counter.decrement();
      counter.decrement();
      counter.decrement();
      expect(counter.counter, 0);
    });
  });
}
