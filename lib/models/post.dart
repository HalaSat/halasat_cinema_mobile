import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  static Serializer<Post> get serializer => _$postSerializer;

  BuiltList<Movie> get movies;
  BuiltList<Other> get other;

  Post._();

  factory Post([updates(PostBuilder b)]) = _$Post;
}

abstract class Movie implements Built<Movie, MovieBuilder> {
  static Serializer<Movie> get serializer => _$movieSerializer;

  String get id;
  @nullable
  String get uniqid;
  String get title;
  String get imdb;
  String get type;
  String get trailer;
  String get director;
  String get writer;
  String get cast;
  String get story;
  String get genre;
  String get year;
  @nullable
  String get mpr;
  @nullable
  String get runtime;
  @nullable
  String get imdbrate;
  @nullable
  String get production;
  @nullable
  String get poster;
  @nullable
  String get background;
  @nullable
  String get language;
  @nullable
  String get approved;
  @nullable
  String get adddate;
  @nullable
  String get addby;
  @nullable
  String get featured;
  @nullable
  String get large;
  @nullable
  String get lastupdate;
  @nullable
  String get url;
  @nullable
  String get hardsub;
  @nullable
  String get views;
  @nullable
  String get profile;
  @nullable
  String get renc;
  @nullable
  String get url360p;
  @nullable
  String get alt;
  @nullable
  String get flag;
  @nullable
  String get soundextitle;
  @nullable
  String get profile360;
  @nullable
  String get slidetitle;
  @nullable
  String get writers;
  @nullable
  String get serverip;
  @nullable
  String get hlsport;
  @nullable
  String get playlist;
  @nullable
  String get rate;
  @nullable
  String get lang;
  @nullable
  String get srt;
  @nullable
  String get urladaptive;
  @nullable
  String get url720;
  @nullable
  String get url360;
  @nullable
  String get category;
  @nullable
  String get fileext;

  Movie._();

  factory Movie([updates(MovieBuilder b)]) = _$Movie;
}

abstract class Other implements Built<Other, OtherBuilder> {
  static Serializer<Other> get serializer => _$otherSerializer;

  @nullable
  String get id;
  @nullable
  String get title;
  @nullable
  String get type;
  @nullable
  String get poster;
  @nullable
  String get year;
  @nullable
  String get imdbrate;
  @nullable
  String get genre;
  @nullable
  String get views;
  @nullable
  String get story;
  @nullable
  String get category;
  @nullable
  String get serverip;

  Other._();

  factory Other([updates(OtherBuilder b)]) = _$Other;
}
