import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import '../models/post.dart';
import '../models/post_list.dart';
import '../models/season.dart';
import '../models/featured.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Post,
  PostList,
  Season,
  Featured,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
