import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_list.g.dart';

abstract class PostList implements Built<PostList, PostListBuilder> {
  static Serializer<PostList> get serializer => _$postListSerializer;

  BuiltList<PostListItem> get posts;
  int get pages;

  PostList._();

  factory PostList([updates(PostListBuilder b)]) = _$PostList;
}

abstract class PostListItem
    implements Built<PostListItem, PostListItemBuilder> {
  static Serializer<PostListItem> get serializer => _$postListItemSerializer;

  @nullable
  String get id;
  @nullable
  String get title;
  @nullable
  String get story;
  @nullable
  String get poster;
  @nullable
  String get type;
  @nullable
  String get year;
  @nullable
  String get views;
  @nullable
  String get imdbrate;
  @nullable
  String get mpr;
  @nullable
  String get seasons;
  @nullable
  String get category;
  @nullable
  String get serverip;
  @nullable
  String get url;
  @nullable
  String get background;
  @nullable
  String get cast;
  @nullable
  String get director;

  PostListItem._();

  factory PostListItem([updates(PostListItemBuilder b)]) = _$PostListItem;
}
