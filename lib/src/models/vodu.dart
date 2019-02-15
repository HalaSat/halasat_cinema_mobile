import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vodu.g.dart';

abstract class Vodu implements Built<Vodu, VoduBuilder> {
  Posts get posts;
  int get pages;

  Vodu._();
  factory Vodu([updates(VoduBuilder b)]) = _$Vodu;
  static Serializer<Vodu> get serializer => _$voduSerializer;
}

abstract class Posts implements Built<Posts, PostsBuilder> {
  BuiltList<Post> get posts;

  Posts._();
  factory Posts([updates(PostsBuilder b)]) = _$Posts;
  static Serializer<Posts> get serializer => _$postsSerializer;
}

abstract class Post implements Built<Post, PostBuilder> {
  int get id;
  String get title;
  String get story;
  int get type;
  int get year;
  int get views;
  double get imdbRating;
  String get mpr;
  int get seasons;
  String get category;
  String get serverIp;
  String get url;
  String get background;
  String get cast;
  String get director;

  Post._();
  factory Post([updates(PostBuilder b)]) = _$Post;
  static Serializer<Post> get serializer => _$postSerializer;
}
