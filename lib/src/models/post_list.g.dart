// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostList> _$postListSerializer = new _$PostListSerializer();
Serializer<PostListItem> _$postListItemSerializer =
    new _$PostListItemSerializer();

class _$PostListSerializer implements StructuredSerializer<PostList> {
  @override
  final Iterable<Type> types = const [PostList, _$PostList];
  @override
  final String wireName = 'PostList';

  @override
  Iterable serialize(Serializers serializers, PostList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(PostListItem)])),
      'pages',
      serializers.serialize(object.pages, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  PostList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PostListItem)]))
              as BuiltList);
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

class _$PostListItemSerializer implements StructuredSerializer<PostListItem> {
  @override
  final Iterable<Type> types = const [PostListItem, _$PostListItem];
  @override
  final String wireName = 'PostListItem';

  @override
  Iterable serialize(Serializers serializers, PostListItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.story != null) {
      result
        ..add('story')
        ..add(serializers.serialize(object.story,
            specifiedType: const FullType(String)));
    }
    if (object.poster != null) {
      result
        ..add('poster')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.year != null) {
      result
        ..add('year')
        ..add(serializers.serialize(object.year,
            specifiedType: const FullType(String)));
    }
    if (object.views != null) {
      result
        ..add('views')
        ..add(serializers.serialize(object.views,
            specifiedType: const FullType(String)));
    }
    if (object.imdbrate != null) {
      result
        ..add('imdbrate')
        ..add(serializers.serialize(object.imdbrate,
            specifiedType: const FullType(String)));
    }
    if (object.mpr != null) {
      result
        ..add('mpr')
        ..add(serializers.serialize(object.mpr,
            specifiedType: const FullType(String)));
    }
    if (object.seasons != null) {
      result
        ..add('seasons')
        ..add(serializers.serialize(object.seasons,
            specifiedType: const FullType(String)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }
    if (object.serverip != null) {
      result
        ..add('serverip')
        ..add(serializers.serialize(object.serverip,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.background != null) {
      result
        ..add('background')
        ..add(serializers.serialize(object.background,
            specifiedType: const FullType(String)));
    }
    if (object.cast != null) {
      result
        ..add('cast')
        ..add(serializers.serialize(object.cast,
            specifiedType: const FullType(String)));
    }
    if (object.director != null) {
      result
        ..add('director')
        ..add(serializers.serialize(object.director,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  PostListItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'story':
          result.story = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbrate':
          result.imdbrate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mpr':
          result.mpr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'seasons':
          result.seasons = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serverip':
          result.serverip = serializers.deserialize(value,
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

class _$PostList extends PostList {
  @override
  final BuiltList<PostListItem> posts;
  @override
  final int pages;

  factory _$PostList([void updates(PostListBuilder b)]) =>
      (new PostListBuilder()..update(updates)).build();

  _$PostList._({this.posts, this.pages}) : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('PostList', 'posts');
    }
    if (pages == null) {
      throw new BuiltValueNullFieldError('PostList', 'pages');
    }
  }

  @override
  PostList rebuild(void updates(PostListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostListBuilder toBuilder() => new PostListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostList && posts == other.posts && pages == other.pages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, posts.hashCode), pages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostList')
          ..add('posts', posts)
          ..add('pages', pages))
        .toString();
  }
}

class PostListBuilder implements Builder<PostList, PostListBuilder> {
  _$PostList _$v;

  ListBuilder<PostListItem> _posts;
  ListBuilder<PostListItem> get posts =>
      _$this._posts ??= new ListBuilder<PostListItem>();
  set posts(ListBuilder<PostListItem> posts) => _$this._posts = posts;

  int _pages;
  int get pages => _$this._pages;
  set pages(int pages) => _$this._pages = pages;

  PostListBuilder();

  PostListBuilder get _$this {
    if (_$v != null) {
      _posts = _$v.posts?.toBuilder();
      _pages = _$v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostList;
  }

  @override
  void update(void updates(PostListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PostList build() {
    _$PostList _$result;
    try {
      _$result = _$v ?? new _$PostList._(posts: posts.build(), pages: pages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$PostListItem extends PostListItem {
  @override
  final String id;
  @override
  final String title;
  @override
  final String story;
  @override
  final String poster;
  @override
  final String type;
  @override
  final String year;
  @override
  final String views;
  @override
  final String imdbrate;
  @override
  final String mpr;
  @override
  final String seasons;
  @override
  final String category;
  @override
  final String serverip;
  @override
  final String url;
  @override
  final String background;
  @override
  final String cast;
  @override
  final String director;

  factory _$PostListItem([void updates(PostListItemBuilder b)]) =>
      (new PostListItemBuilder()..update(updates)).build();

  _$PostListItem._(
      {this.id,
      this.title,
      this.story,
      this.poster,
      this.type,
      this.year,
      this.views,
      this.imdbrate,
      this.mpr,
      this.seasons,
      this.category,
      this.serverip,
      this.url,
      this.background,
      this.cast,
      this.director})
      : super._();

  @override
  PostListItem rebuild(void updates(PostListItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PostListItemBuilder toBuilder() => new PostListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostListItem &&
        id == other.id &&
        title == other.title &&
        story == other.story &&
        poster == other.poster &&
        type == other.type &&
        year == other.year &&
        views == other.views &&
        imdbrate == other.imdbrate &&
        mpr == other.mpr &&
        seasons == other.seasons &&
        category == other.category &&
        serverip == other.serverip &&
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
                                                        $jc(
                                                            $jc(
                                                                $jc(0,
                                                                    id.hashCode),
                                                                title.hashCode),
                                                            story.hashCode),
                                                        poster.hashCode),
                                                    type.hashCode),
                                                year.hashCode),
                                            views.hashCode),
                                        imdbrate.hashCode),
                                    mpr.hashCode),
                                seasons.hashCode),
                            category.hashCode),
                        serverip.hashCode),
                    url.hashCode),
                background.hashCode),
            cast.hashCode),
        director.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostListItem')
          ..add('id', id)
          ..add('title', title)
          ..add('story', story)
          ..add('poster', poster)
          ..add('type', type)
          ..add('year', year)
          ..add('views', views)
          ..add('imdbrate', imdbrate)
          ..add('mpr', mpr)
          ..add('seasons', seasons)
          ..add('category', category)
          ..add('serverip', serverip)
          ..add('url', url)
          ..add('background', background)
          ..add('cast', cast)
          ..add('director', director))
        .toString();
  }
}

class PostListItemBuilder
    implements Builder<PostListItem, PostListItemBuilder> {
  _$PostListItem _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _story;
  String get story => _$this._story;
  set story(String story) => _$this._story = story;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _views;
  String get views => _$this._views;
  set views(String views) => _$this._views = views;

  String _imdbrate;
  String get imdbrate => _$this._imdbrate;
  set imdbrate(String imdbrate) => _$this._imdbrate = imdbrate;

  String _mpr;
  String get mpr => _$this._mpr;
  set mpr(String mpr) => _$this._mpr = mpr;

  String _seasons;
  String get seasons => _$this._seasons;
  set seasons(String seasons) => _$this._seasons = seasons;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _serverip;
  String get serverip => _$this._serverip;
  set serverip(String serverip) => _$this._serverip = serverip;

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

  PostListItemBuilder();

  PostListItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _story = _$v.story;
      _poster = _$v.poster;
      _type = _$v.type;
      _year = _$v.year;
      _views = _$v.views;
      _imdbrate = _$v.imdbrate;
      _mpr = _$v.mpr;
      _seasons = _$v.seasons;
      _category = _$v.category;
      _serverip = _$v.serverip;
      _url = _$v.url;
      _background = _$v.background;
      _cast = _$v.cast;
      _director = _$v.director;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostListItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PostListItem;
  }

  @override
  void update(void updates(PostListItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PostListItem build() {
    final _$result = _$v ??
        new _$PostListItem._(
            id: id,
            title: title,
            story: story,
            poster: poster,
            type: type,
            year: year,
            views: views,
            imdbrate: imdbrate,
            mpr: mpr,
            seasons: seasons,
            category: category,
            serverip: serverip,
            url: url,
            background: background,
            cast: cast,
            director: director);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
