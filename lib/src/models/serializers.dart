import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/models/season.dart';
import 'package:halasat_cinema_mobile/src/models/featured.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Post,
  PostList,
  Season,
  Featured,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
