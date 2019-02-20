import 'package:flutter_test/flutter_test.dart';

import 'package:halasat_cinema_mobile/services/vodu/vodu.dart';

main() {
  test('Vodu api/post test', () async {
    final post = await fetchPost(21);
    expect(post.movies[0].title, equals('The Walking Dead'));
  });
}
