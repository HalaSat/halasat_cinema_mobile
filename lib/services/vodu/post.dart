import 'fetch.dart';
import '../../models/serializers.dart';
import '../../models/post.dart';
import '../../const.dart';

Future<Post> fetchPost(int id) async {
  final Map<String, dynamic> data = await fetch(
    voduApiPrefix,
    '/api/post/$id',
  );
  final Post post = serializers.deserializeWith(Post.serializer, data);

  return post;
}
