import 'package:flutter_test/flutter_test.dart';
import 'package:halasat_cinema_mobile/counter.dart';

void main() {
  group('Counter', () {
    test('Counter value should be incremented', () {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 1);
    });
    test('Counter should be decremented', () {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, -1);
    });
  });
}
