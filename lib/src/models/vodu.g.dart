// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vodu.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Vodu> _$voduSerializer = new _$VoduSerializer();
Serializer<Posts> _$postsSerializer = new _$PostsSerializer();
Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$VoduSerializer implements StructuredSerializer<Vodu> {
  @override
  final Iterable<Type> types = const [Vodu, _$Vodu];
  @override
  final String wireName = 'Vodu';

  @override
  Iterable serialize(Serializers serializers, Vodu object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts, specifiedType: const FullType(Posts)),
      'pages',
      serializers.serialize(object.pages, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Vodu deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VoduBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
              specifiedType: const FullType(Posts)) as Posts);
          break;
        case 'pages':
          result.pages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$PostsSerializer implements StructuredSerializer<Posts> {
  @override
  final Iterable<Type> types = const [Posts, _$Posts];
  @override
  final String wireName = 'Posts';

  @override
  Iterable serialize(Serializers serializers, Posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Post)])),
    ];

    return result;
  }

  @override
  Posts deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Post)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'story',
      serializers.serialize(object.story,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(int)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'views',
      serializers.serialize(object.views, specifiedType: const FullType(int)),
      'imdbRating',
      serializers.serialize(object.imdbRating,
          specifiedType: const FullType(double)),
      'mpr',
      serializers.serialize(object.mpr, specifiedType: const FullType(String)),
      'seasons',
      serializers.serialize(object.seasons, specifiedType: const FullType(int)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'serverIp',
      serializers.serialize(object.serverIp,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'background',
      serializers.serialize(object.background,
          specifiedType: const FullType(String)),
      'cast',
      serializers.serialize(object.cast, specifiedType: const FullType(String)),
      'director',
      serializers.serialize(object.director,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'story':
          result.story = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imdbRating':
          result.imdbRating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mpr':
          result.mpr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seasons':
          result.seasons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serverIp':
          result.serverIp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cast':
          result.cast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Vodu extends Vodu {
  @override
  final Posts posts;
  @override
  final int pages;

  factory _$Vodu([void updates(VoduBuilder b)]) =>
      (new VoduBuilder()..update(updates)).build();

  _$Vodu._({this.posts, this.pages}) : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('Vodu', 'posts');
    }
    if (pages == null) {
      throw new BuiltValueNullFieldError('Vodu', 'pages');
    }
  }

  @override
  Vodu rebuild(void updates(VoduBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VoduBuilder toBuilder() => new VoduBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vodu && posts == other.posts && pages == other.pages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, posts.hashCode), pages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Vodu')
          ..add('posts', posts)
          ..add('pages', pages))
        .toString();
  }
}

class VoduBuilder implements Builder<Vodu, VoduBuilder> {
  _$Vodu _$v;

  PostsBuilder _posts;
  PostsBuilder get posts => _$this._posts ??= new PostsBuilder();
  set posts(PostsBuilder posts) => _$this._posts = posts;

  int _pages;
  int get pages => _$this._pages;
  set pages(int pages) => _$this._pages = pages;

  VoduBuilder();

  VoduBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _pages = _$v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Vodu other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Vodu;
  }

  @override
  void update(void updates(VoduBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Vodu build() {
    _$Vodu _$result;
    try {
      _$result = _$v ?? new _$Vodu._(posts: posts.build(), pages: pages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Vodu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Posts extends Posts {
  @override
  final BuiltList<Post> posts;

  factory _$Posts([void updates(PostsBuilder b)]) =>
      (new PostsBuilder()..update(updates)).build();

  _$Posts._({this.posts}) : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('Posts', 'posts');
    }
  }

  @override
  Posts rebuild(void updates(PostsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsBuilder toBuilder() => new PostsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posts && posts == other.posts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, posts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Posts')..add('posts', posts))
        .toString();
  }
}

class PostsBuilder implements Builder<Posts, PostsBuilder> {
  _$Posts _$v;

  ListBuilder<Post> _posts;
  ListBuilder<Post> get posts => _$this._posts ??= new ListBuilder<Post>();
  set posts(ListBuilder<Post> posts) => _$this._posts = posts;

  PostsBuilder();

  PostsBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Posts;
  }

  @override
  void update(void updates(PostsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Posts build() {
    _$Posts _$result;
    try {
      _$result = _$v ?? new _$Posts._(posts: posts.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Post extends Post {
  @override
  final int id;
  @override
  final String title;
  @override
  final String story;
  @override
  final int type;
  @override
  final int year;
  @override
  final int views;
  @override
  final double imdbRating;
  @override
  final String mpr;
  @override
  final int seasons;
  @override
  final String category;
  @override
  final String serverIp;
  @override
  final String url;
  @override
  final String background;
  @override
  final String cast;
  @override
  final String director;

  factory _$Post([void updates(PostBuilder b)]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {this.id,
      this.title,
      this.story,
      this.type,
      this.year,
      this.views,
      this.imdbRating,
      this.mpr,
      this.seasons,
      this.category,
      this.serverIp,
      this.url,
      this.background,
      this.cast,
      this.director})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Post', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Post', 'title');
    }
    if (story == null) {
      throw new BuiltValueNullFieldError('Post', 'story');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Post', 'type');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('Post', 'year');
    }
    if (views == null) {
      throw new BuiltValueNullFieldError('Post', 'views');
    }
    if (imdbRating == null) {
      throw new BuiltValueNullFieldError('Post', 'imdbRating');
    }
    if (mpr == null) {
      throw new BuiltValueNullFieldError('Post', 'mpr');
    }
    if (seasons == null) {
      throw new BuiltValueNullFieldError('Post', 'seasons');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Post', 'category');
    }
    if (serverIp == null) {
      throw new BuiltValueNullFieldError('Post', 'serverIp');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Post', 'url');
    }
    if (background == null) {
      throw new BuiltValueNullFieldError('Post', 'background');
    }
    if (cast == null) {
      throw new BuiltValueNullFieldError('Post', 'cast');
    }
    if (director == null) {
      throw new BuiltValueNullFieldError('Post', 'director');
    }
  }

  @override
  Post rebuild(void updates(PostBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        id == other.id &&
        title == other.title &&
        story == other.story &&
        type == other.type &&
        year == other.year &&
        views == other.views &&
        imdbRating == other.imdbRating &&
        mpr == other.mpr &&
        seasons == other.seasons &&
        category == other.category &&
        serverIp == other.serverIp &&
        url == other.url &&
        background == other.background &&
        cast == other.cast &&
        director == other.director;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc($jc(0, id.hashCode),
                                                            title.hashCode),
                                                        story.hashCode),
                                                    type.hashCode),
                                                year.hashCode),
                                            views.hashCode),
                                        imdbRating.hashCode),
                                    mpr.hashCode),
                                seasons.hashCode),
                            category.hashCode),
                        serverIp.hashCode),
                    url.hashCode),
                background.hashCode),
            cast.hashCode),
        director.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('id', id)
          ..add('title', title)
          ..add('story', story)
          ..add('type', type)
          ..add('year', year)
          ..add('views', views)
          ..add('imdbRating', imdbRating)
          ..add('mpr', mpr)
          ..add('seasons', seasons)
          ..add('category', category)
          ..add('serverIp', serverIp)
          ..add('url', url)
          ..add('background', background)
          ..add('cast', cast)
          ..add('director', director))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _story;
  String get story => _$this._story;
  set story(String story) => _$this._story = story;

  int _type;
  int get type => _$this._type;
  set type(int type) => _$this._type = type;

  int _year;
  int get year => _$this._year;
  set year(int year) => _$this._year = year;

  int _views;
  int get views => _$this._views;
  set views(int views) => _$this._views = views;

  double _imdbRating;
  double get imdbRating => _$this._imdbRating;
  set imdbRating(double imdbRating) => _$this._imdbRating = imdbRating;

  String _mpr;
  String get mpr => _$this._mpr;
  set mpr(String mpr) => _$this._mpr = mpr;

  int _seasons;
  int get seasons => _$this._seasons;
  set seasons(int seasons) => _$this._seasons = seasons;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _serverIp;
  String get serverIp => _$this._serverIp;
  set serverIp(String serverIp) => _$this._serverIp = serverIp;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _background;
  String get background => _$this._background;
  set background(String background) => _$this._background = background;

  String _cast;
  String get cast => _$this._cast;
  set cast(String cast) => _$this._cast = cast;

  String _director;
  String get director => _$this._director;
  set director(String director) => _$this._director = director;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _story = _$v.story;
      _type = _$v.type;
      _year = _$v.year;
      _views = _$v.views;
      _imdbRating = _$v.imdbRating;
      _mpr = _$v.mpr;
      _seasons = _$v.seasons;
      _category = _$v.category;
      _serverIp = _$v.serverIp;
      _url = _$v.url;
      _background = _$v.background;
      _cast = _$v.cast;
      _director = _$v.director;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Post;
  }

  @override
  void update(void updates(PostBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    final _$result = _$v ??
        new _$Post._(
            id: id,
            title: title,
            story: story,
            type: type,
            year: year,
            views: views,
            imdbRating: imdbRating,
            mpr: mpr,
            seasons: seasons,
            category: category,
            serverIp: serverIp,
            url: url,
            background: background,
            cast: cast,
            director: director);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
