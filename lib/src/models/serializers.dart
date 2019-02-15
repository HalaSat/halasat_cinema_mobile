import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:halasat_cinema_mobile/src/models/vodu.dart';

part 'serializer.g.dart';

@SerializersFor(const [Vodu])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
