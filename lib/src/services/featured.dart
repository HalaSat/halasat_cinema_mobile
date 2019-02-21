import 'fetch.dart';
import '../models/serializers.dart';
import '../models/featured.dart';
import '../const.dart';

const String kSuffix = '/api/list/featured';

Future<Featured> fetchFeatured() async {
  final Map<String, dynamic> data = await fetch(
    voduApiPrefix,
    kSuffix,
  );
  final Featured movieList =
      serializers.deserializeWith(Featured.serializer, data);

  return movieList;
}