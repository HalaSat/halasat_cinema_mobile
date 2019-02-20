// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Post> _$postSerializer = new _$PostSerializer();
Serializer<Movie> _$movieSerializer = new _$MovieSerializer();
Serializer<Other> _$otherSerializer = new _$OtherSerializer();

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'movies',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movie)])),
      'other',
      serializers.serialize(object.other,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Other)])),
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
        case 'movies':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movie)]))
              as BuiltList);
          break;
        case 'other':
          result.other.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Other)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'imdb',
      serializers.serialize(object.imdb, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'trailer',
      serializers.serialize(object.trailer,
          specifiedType: const FullType(String)),
      'director',
      serializers.serialize(object.director,
          specifiedType: const FullType(String)),
      'writer',
      serializers.serialize(object.writer,
          specifiedType: const FullType(String)),
      'cast',
      serializers.serialize(object.cast, specifiedType: const FullType(String)),
      'story',
      serializers.serialize(object.story,
          specifiedType: const FullType(String)),
      'genre',
      serializers.serialize(object.genre,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(String)),
    ];
    if (object.uniqid != null) {
      result
        ..add('uniqid')
        ..add(serializers.serialize(object.uniqid,
            specifiedType: const FullType(String)));
    }
    if (object.mpr != null) {
      result
        ..add('mpr')
        ..add(serializers.serialize(object.mpr,
            specifiedType: const FullType(String)));
    }
    if (object.runtime != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(object.runtime,
            specifiedType: const FullType(String)));
    }
    if (object.imdbrate != null) {
      result
        ..add('imdbrate')
        ..add(serializers.serialize(object.imdbrate,
            specifiedType: const FullType(String)));
    }
    if (object.production != null) {
      result
        ..add('production')
        ..add(serializers.serialize(object.production,
            specifiedType: const FullType(String)));
    }
    if (object.poster != null) {
      result
        ..add('poster')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    if (object.background != null) {
      result
        ..add('background')
        ..add(serializers.serialize(object.background,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.approved != null) {
      result
        ..add('approved')
        ..add(serializers.serialize(object.approved,
            specifiedType: const FullType(String)));
    }
    if (object.adddate != null) {
      result
        ..add('adddate')
        ..add(serializers.serialize(object.adddate,
            specifiedType: const FullType(String)));
    }
    if (object.addby != null) {
      result
        ..add('addby')
        ..add(serializers.serialize(object.addby,
            specifiedType: const FullType(String)));
    }
    if (object.featured != null) {
      result
        ..add('featured')
        ..add(serializers.serialize(object.featured,
            specifiedType: const FullType(String)));
    }
    if (object.large != null) {
      result
        ..add('large')
        ..add(serializers.serialize(object.large,
            specifiedType: const FullType(String)));
    }
    if (object.lastupdate != null) {
      result
        ..add('lastupdate')
        ..add(serializers.serialize(object.lastupdate,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.hardsub != null) {
      result
        ..add('hardsub')
        ..add(serializers.serialize(object.hardsub,
            specifiedType: const FullType(String)));
    }
    if (object.views != null) {
      result
        ..add('views')
        ..add(serializers.serialize(object.views,
            specifiedType: const FullType(String)));
    }
    if (object.profile != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(object.profile,
            specifiedType: const FullType(String)));
    }
    if (object.renc != null) {
      result
        ..add('renc')
        ..add(serializers.serialize(object.renc,
            specifiedType: const FullType(String)));
    }
    if (object.url360p != null) {
      result
        ..add('url360p')
        ..add(serializers.serialize(object.url360p,
            specifiedType: const FullType(String)));
    }
    if (object.alt != null) {
      result
        ..add('alt')
        ..add(serializers.serialize(object.alt,
            specifiedType: const FullType(String)));
    }
    if (object.flag != null) {
      result
        ..add('flag')
        ..add(serializers.serialize(object.flag,
            specifiedType: const FullType(String)));
    }
    if (object.soundextitle != null) {
      result
        ..add('soundextitle')
        ..add(serializers.serialize(object.soundextitle,
            specifiedType: const FullType(String)));
    }
    if (object.profile360 != null) {
      result
        ..add('profile360')
        ..add(serializers.serialize(object.profile360,
            specifiedType: const FullType(String)));
    }
    if (object.slidetitle != null) {
      result
        ..add('slidetitle')
        ..add(serializers.serialize(object.slidetitle,
            specifiedType: const FullType(String)));
    }
    if (object.writers != null) {
      result
        ..add('writers')
        ..add(serializers.serialize(object.writers,
            specifiedType: const FullType(String)));
    }
    if (object.serverip != null) {
      result
        ..add('serverip')
        ..add(serializers.serialize(object.serverip,
            specifiedType: const FullType(String)));
    }
    if (object.hlsport != null) {
      result
        ..add('hlsport')
        ..add(serializers.serialize(object.hlsport,
            specifiedType: const FullType(String)));
    }
    if (object.playlist != null) {
      result
        ..add('playlist')
        ..add(serializers.serialize(object.playlist,
            specifiedType: const FullType(String)));
    }
    if (object.rate != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(object.rate,
            specifiedType: const FullType(String)));
    }
    if (object.lang != null) {
      result
        ..add('lang')
        ..add(serializers.serialize(object.lang,
            specifiedType: const FullType(String)));
    }
    if (object.srt != null) {
      result
        ..add('srt')
        ..add(serializers.serialize(object.srt,
            specifiedType: const FullType(String)));
    }
    if (object.urladaptive != null) {
      result
        ..add('urladaptive')
        ..add(serializers.serialize(object.urladaptive,
            specifiedType: const FullType(String)));
    }
    if (object.url720 != null) {
      result
        ..add('url720')
        ..add(serializers.serialize(object.url720,
            specifiedType: const FullType(String)));
    }
    if (object.url360 != null) {
      result
        ..add('url360')
        ..add(serializers.serialize(object.url360,
            specifiedType: const FullType(String)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(String)));
    }
    if (object.fileext != null) {
      result
        ..add('fileext')
        ..add(serializers.serialize(object.fileext,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

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
        case 'uniqid':
          result.uniqid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdb':
          result.imdb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'trailer':
          result.trailer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'director':
          result.director = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'writer':
          result.writer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cast':
          result.cast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'story':
          result.story = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mpr':
          result.mpr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbrate':
          result.imdbrate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production':
          result.production = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'background':
          result.background = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'approved':
          result.approved = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adddate':
          result.adddate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addby':
          result.addby = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastupdate':
          result.lastupdate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hardsub':
          result.hardsub = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile':
          result.profile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'renc':
          result.renc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url360p':
          result.url360p = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'alt':
          result.alt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'flag':
          result.flag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'soundextitle':
          result.soundextitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile360':
          result.profile360 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slidetitle':
          result.slidetitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'writers':
          result.writers = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serverip':
          result.serverip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hlsport':
          result.hlsport = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'playlist':
          result.playlist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lang':
          result.lang = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'srt':
          result.srt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'urladaptive':
          result.urladaptive = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url720':
          result.url720 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url360':
          result.url360 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fileext':
          result.fileext = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OtherSerializer implements StructuredSerializer<Other> {
  @override
  final Iterable<Type> types = const [Other, _$Other];
  @override
  final String wireName = 'Other';

  @override
  Iterable serialize(Serializers serializers, Other object,
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
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.poster != null) {
      result
        ..add('poster')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    if (object.year != null) {
      result
        ..add('year')
        ..add(serializers.serialize(object.year,
            specifiedType: const FullType(String)));
    }
    if (object.imdbrate != null) {
      result
        ..add('imdbrate')
        ..add(serializers.serialize(object.imdbrate,
            specifiedType: const FullType(String)));
    }
    if (object.genre != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(object.genre,
            specifiedType: const FullType(String)));
    }
    if (object.views != null) {
      result
        ..add('views')
        ..add(serializers.serialize(object.views,
            specifiedType: const FullType(String)));
    }
    if (object.story != null) {
      result
        ..add('story')
        ..add(serializers.serialize(object.story,
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

    return result;
  }

  @override
  Other deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtherBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imdbrate':
          result.imdbrate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'views':
          result.views = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'story':
          result.story = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Post extends Post {
  @override
  final BuiltList<Movie> movies;
  @override
  final BuiltList<Other> other;

  factory _$Post([void updates(PostBuilder b)]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._({this.movies, this.other}) : super._() {
    if (movies == null) {
      throw new BuiltValueNullFieldError('Post', 'movies');
    }
    if (other == null) {
      throw new BuiltValueNullFieldError('Post', 'other');
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
    return other is Post && movies == other.movies && other == other.other;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, movies.hashCode), other.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('movies', movies)
          ..add('other', other))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post _$v;

  ListBuilder<Movie> _movies;
  ListBuilder<Movie> get movies => _$this._movies ??= new ListBuilder<Movie>();
  set movies(ListBuilder<Movie> movies) => _$this._movies = movies;

  ListBuilder<Other> _other;
  ListBuilder<Other> get other => _$this._other ??= new ListBuilder<Other>();
  set other(ListBuilder<Other> other) => _$this._other = other;

  PostBuilder();

  PostBuilder get _$this {
    if (_$v != null) {
      _movies = _$v.movies?.toBuilder();
      _other = _$v.other?.toBuilder();
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
    _$Post _$result;
    try {
      _$result =
          _$v ?? new _$Post._(movies: movies.build(), other: other.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
        _$failedField = 'other';
        other.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Movie extends Movie {
  @override
  final String id;
  @override
  final String uniqid;
  @override
  final String title;
  @override
  final String imdb;
  @override
  final String type;
  @override
  final String trailer;
  @override
  final String director;
  @override
  final String writer;
  @override
  final String cast;
  @override
  final String story;
  @override
  final String genre;
  @override
  final String year;
  @override
  final String mpr;
  @override
  final String runtime;
  @override
  final String imdbrate;
  @override
  final String production;
  @override
  final String poster;
  @override
  final String background;
  @override
  final String language;
  @override
  final String approved;
  @override
  final String adddate;
  @override
  final String addby;
  @override
  final String featured;
  @override
  final String large;
  @override
  final String lastupdate;
  @override
  final String url;
  @override
  final String hardsub;
  @override
  final String views;
  @override
  final String profile;
  @override
  final String renc;
  @override
  final String url360p;
  @override
  final String alt;
  @override
  final String flag;
  @override
  final String soundextitle;
  @override
  final String profile360;
  @override
  final String slidetitle;
  @override
  final String writers;
  @override
  final String serverip;
  @override
  final String hlsport;
  @override
  final String playlist;
  @override
  final String rate;
  @override
  final String lang;
  @override
  final String srt;
  @override
  final String urladaptive;
  @override
  final String url720;
  @override
  final String url360;
  @override
  final String category;
  @override
  final String fileext;

  factory _$Movie([void updates(MovieBuilder b)]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.uniqid,
      this.title,
      this.imdb,
      this.type,
      this.trailer,
      this.director,
      this.writer,
      this.cast,
      this.story,
      this.genre,
      this.year,
      this.mpr,
      this.runtime,
      this.imdbrate,
      this.production,
      this.poster,
      this.background,
      this.language,
      this.approved,
      this.adddate,
      this.addby,
      this.featured,
      this.large,
      this.lastupdate,
      this.url,
      this.hardsub,
      this.views,
      this.profile,
      this.renc,
      this.url360p,
      this.alt,
      this.flag,
      this.soundextitle,
      this.profile360,
      this.slidetitle,
      this.writers,
      this.serverip,
      this.hlsport,
      this.playlist,
      this.rate,
      this.lang,
      this.srt,
      this.urladaptive,
      this.url720,
      this.url360,
      this.category,
      this.fileext})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Movie', 'title');
    }
    if (imdb == null) {
      throw new BuiltValueNullFieldError('Movie', 'imdb');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Movie', 'type');
    }
    if (trailer == null) {
      throw new BuiltValueNullFieldError('Movie', 'trailer');
    }
    if (director == null) {
      throw new BuiltValueNullFieldError('Movie', 'director');
    }
    if (writer == null) {
      throw new BuiltValueNullFieldError('Movie', 'writer');
    }
    if (cast == null) {
      throw new BuiltValueNullFieldError('Movie', 'cast');
    }
    if (story == null) {
      throw new BuiltValueNullFieldError('Movie', 'story');
    }
    if (genre == null) {
      throw new BuiltValueNullFieldError('Movie', 'genre');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('Movie', 'year');
    }
  }

  @override
  Movie rebuild(void updates(MovieBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        uniqid == other.uniqid &&
        title == other.title &&
        imdb == other.imdb &&
        type == other.type &&
        trailer == other.trailer &&
        director == other.director &&
        writer == other.writer &&
        cast == other.cast &&
        story == other.story &&
        genre == other.genre &&
        year == other.year &&
        mpr == other.mpr &&
        runtime == other.runtime &&
        imdbrate == other.imdbrate &&
        production == other.production &&
        poster == other.poster &&
        background == other.background &&
        language == other.language &&
        approved == other.approved &&
        adddate == other.adddate &&
        addby == other.addby &&
        featured == other.featured &&
        large == other.large &&
        lastupdate == other.lastupdate &&
        url == other.url &&
        hardsub == other.hardsub &&
        views == other.views &&
        profile == other.profile &&
        renc == other.renc &&
        url360p == other.url360p &&
        alt == other.alt &&
        flag == other.flag &&
        soundextitle == other.soundextitle &&
        profile360 == other.profile360 &&
        slidetitle == other.slidetitle &&
        writers == other.writers &&
        serverip == other.serverip &&
        hlsport == other.hlsport &&
        playlist == other.playlist &&
        rate == other.rate &&
        lang == other.lang &&
        srt == other.srt &&
        urladaptive == other.urladaptive &&
        url720 == other.url720 &&
        url360 == other.url360 &&
        category == other.category &&
        fileext == other.fileext;
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
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), uniqid.hashCode), title.hashCode), imdb.hashCode), type.hashCode), trailer.hashCode), director.hashCode), writer.hashCode), cast.hashCode), story.hashCode), genre.hashCode), year.hashCode), mpr.hashCode), runtime.hashCode), imdbrate.hashCode), production.hashCode), poster.hashCode), background.hashCode), language.hashCode), approved.hashCode), adddate.hashCode), addby.hashCode), featured.hashCode), large.hashCode), lastupdate.hashCode), url.hashCode), hardsub.hashCode), views.hashCode), profile.hashCode),
                                                                                renc.hashCode),
                                                                            url360p.hashCode),
                                                                        alt.hashCode),
                                                                    flag.hashCode),
                                                                soundextitle.hashCode),
                                                            profile360.hashCode),
                                                        slidetitle.hashCode),
                                                    writers.hashCode),
                                                serverip.hashCode),
                                            hlsport.hashCode),
                                        playlist.hashCode),
                                    rate.hashCode),
                                lang.hashCode),
                            srt.hashCode),
                        urladaptive.hashCode),
                    url720.hashCode),
                url360.hashCode),
            category.hashCode),
        fileext.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('uniqid', uniqid)
          ..add('title', title)
          ..add('imdb', imdb)
          ..add('type', type)
          ..add('trailer', trailer)
          ..add('director', director)
          ..add('writer', writer)
          ..add('cast', cast)
          ..add('story', story)
          ..add('genre', genre)
          ..add('year', year)
          ..add('mpr', mpr)
          ..add('runtime', runtime)
          ..add('imdbrate', imdbrate)
          ..add('production', production)
          ..add('poster', poster)
          ..add('background', background)
          ..add('language', language)
          ..add('approved', approved)
          ..add('adddate', adddate)
          ..add('addby', addby)
          ..add('featured', featured)
          ..add('large', large)
          ..add('lastupdate', lastupdate)
          ..add('url', url)
          ..add('hardsub', hardsub)
          ..add('views', views)
          ..add('profile', profile)
          ..add('renc', renc)
          ..add('url360p', url360p)
          ..add('alt', alt)
          ..add('flag', flag)
          ..add('soundextitle', soundextitle)
          ..add('profile360', profile360)
          ..add('slidetitle', slidetitle)
          ..add('writers', writers)
          ..add('serverip', serverip)
          ..add('hlsport', hlsport)
          ..add('playlist', playlist)
          ..add('rate', rate)
          ..add('lang', lang)
          ..add('srt', srt)
          ..add('urladaptive', urladaptive)
          ..add('url720', url720)
          ..add('url360', url360)
          ..add('category', category)
          ..add('fileext', fileext))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uniqid;
  String get uniqid => _$this._uniqid;
  set uniqid(String uniqid) => _$this._uniqid = uniqid;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _imdb;
  String get imdb => _$this._imdb;
  set imdb(String imdb) => _$this._imdb = imdb;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _trailer;
  String get trailer => _$this._trailer;
  set trailer(String trailer) => _$this._trailer = trailer;

  String _director;
  String get director => _$this._director;
  set director(String director) => _$this._director = director;

  String _writer;
  String get writer => _$this._writer;
  set writer(String writer) => _$this._writer = writer;

  String _cast;
  String get cast => _$this._cast;
  set cast(String cast) => _$this._cast = cast;

  String _story;
  String get story => _$this._story;
  set story(String story) => _$this._story = story;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _mpr;
  String get mpr => _$this._mpr;
  set mpr(String mpr) => _$this._mpr = mpr;

  String _runtime;
  String get runtime => _$this._runtime;
  set runtime(String runtime) => _$this._runtime = runtime;

  String _imdbrate;
  String get imdbrate => _$this._imdbrate;
  set imdbrate(String imdbrate) => _$this._imdbrate = imdbrate;

  String _production;
  String get production => _$this._production;
  set production(String production) => _$this._production = production;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  String _background;
  String get background => _$this._background;
  set background(String background) => _$this._background = background;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _approved;
  String get approved => _$this._approved;
  set approved(String approved) => _$this._approved = approved;

  String _adddate;
  String get adddate => _$this._adddate;
  set adddate(String adddate) => _$this._adddate = adddate;

  String _addby;
  String get addby => _$this._addby;
  set addby(String addby) => _$this._addby = addby;

  String _featured;
  String get featured => _$this._featured;
  set featured(String featured) => _$this._featured = featured;

  String _large;
  String get large => _$this._large;
  set large(String large) => _$this._large = large;

  String _lastupdate;
  String get lastupdate => _$this._lastupdate;
  set lastupdate(String lastupdate) => _$this._lastupdate = lastupdate;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _hardsub;
  String get hardsub => _$this._hardsub;
  set hardsub(String hardsub) => _$this._hardsub = hardsub;

  String _views;
  String get views => _$this._views;
  set views(String views) => _$this._views = views;

  String _profile;
  String get profile => _$this._profile;
  set profile(String profile) => _$this._profile = profile;

  String _renc;
  String get renc => _$this._renc;
  set renc(String renc) => _$this._renc = renc;

  String _url360p;
  String get url360p => _$this._url360p;
  set url360p(String url360p) => _$this._url360p = url360p;

  String _alt;
  String get alt => _$this._alt;
  set alt(String alt) => _$this._alt = alt;

  String _flag;
  String get flag => _$this._flag;
  set flag(String flag) => _$this._flag = flag;

  String _soundextitle;
  String get soundextitle => _$this._soundextitle;
  set soundextitle(String soundextitle) => _$this._soundextitle = soundextitle;

  String _profile360;
  String get profile360 => _$this._profile360;
  set profile360(String profile360) => _$this._profile360 = profile360;

  String _slidetitle;
  String get slidetitle => _$this._slidetitle;
  set slidetitle(String slidetitle) => _$this._slidetitle = slidetitle;

  String _writers;
  String get writers => _$this._writers;
  set writers(String writers) => _$this._writers = writers;

  String _serverip;
  String get serverip => _$this._serverip;
  set serverip(String serverip) => _$this._serverip = serverip;

  String _hlsport;
  String get hlsport => _$this._hlsport;
  set hlsport(String hlsport) => _$this._hlsport = hlsport;

  String _playlist;
  String get playlist => _$this._playlist;
  set playlist(String playlist) => _$this._playlist = playlist;

  String _rate;
  String get rate => _$this._rate;
  set rate(String rate) => _$this._rate = rate;

  String _lang;
  String get lang => _$this._lang;
  set lang(String lang) => _$this._lang = lang;

  String _srt;
  String get srt => _$this._srt;
  set srt(String srt) => _$this._srt = srt;

  String _urladaptive;
  String get urladaptive => _$this._urladaptive;
  set urladaptive(String urladaptive) => _$this._urladaptive = urladaptive;

  String _url720;
  String get url720 => _$this._url720;
  set url720(String url720) => _$this._url720 = url720;

  String _url360;
  String get url360 => _$this._url360;
  set url360(String url360) => _$this._url360 = url360;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _fileext;
  String get fileext => _$this._fileext;
  set fileext(String fileext) => _$this._fileext = fileext;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uniqid = _$v.uniqid;
      _title = _$v.title;
      _imdb = _$v.imdb;
      _type = _$v.type;
      _trailer = _$v.trailer;
      _director = _$v.director;
      _writer = _$v.writer;
      _cast = _$v.cast;
      _story = _$v.story;
      _genre = _$v.genre;
      _year = _$v.year;
      _mpr = _$v.mpr;
      _runtime = _$v.runtime;
      _imdbrate = _$v.imdbrate;
      _production = _$v.production;
      _poster = _$v.poster;
      _background = _$v.background;
      _language = _$v.language;
      _approved = _$v.approved;
      _adddate = _$v.adddate;
      _addby = _$v.addby;
      _featured = _$v.featured;
      _large = _$v.large;
      _lastupdate = _$v.lastupdate;
      _url = _$v.url;
      _hardsub = _$v.hardsub;
      _views = _$v.views;
      _profile = _$v.profile;
      _renc = _$v.renc;
      _url360p = _$v.url360p;
      _alt = _$v.alt;
      _flag = _$v.flag;
      _soundextitle = _$v.soundextitle;
      _profile360 = _$v.profile360;
      _slidetitle = _$v.slidetitle;
      _writers = _$v.writers;
      _serverip = _$v.serverip;
      _hlsport = _$v.hlsport;
      _playlist = _$v.playlist;
      _rate = _$v.rate;
      _lang = _$v.lang;
      _srt = _$v.srt;
      _urladaptive = _$v.urladaptive;
      _url720 = _$v.url720;
      _url360 = _$v.url360;
      _category = _$v.category;
      _fileext = _$v.fileext;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void updates(MovieBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    final _$result = _$v ??
        new _$Movie._(
            id: id,
            uniqid: uniqid,
            title: title,
            imdb: imdb,
            type: type,
            trailer: trailer,
            director: director,
            writer: writer,
            cast: cast,
            story: story,
            genre: genre,
            year: year,
            mpr: mpr,
            runtime: runtime,
            imdbrate: imdbrate,
            production: production,
            poster: poster,
            background: background,
            language: language,
            approved: approved,
            adddate: adddate,
            addby: addby,
            featured: featured,
            large: large,
            lastupdate: lastupdate,
            url: url,
            hardsub: hardsub,
            views: views,
            profile: profile,
            renc: renc,
            url360p: url360p,
            alt: alt,
            flag: flag,
            soundextitle: soundextitle,
            profile360: profile360,
            slidetitle: slidetitle,
            writers: writers,
            serverip: serverip,
            hlsport: hlsport,
            playlist: playlist,
            rate: rate,
            lang: lang,
            srt: srt,
            urladaptive: urladaptive,
            url720: url720,
            url360: url360,
            category: category,
            fileext: fileext);
    replace(_$result);
    return _$result;
  }
}

class _$Other extends Other {
  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String poster;
  @override
  final String year;
  @override
  final String imdbrate;
  @override
  final String genre;
  @override
  final String views;
  @override
  final String story;
  @override
  final String category;
  @override
  final String serverip;

  factory _$Other([void updates(OtherBuilder b)]) =>
      (new OtherBuilder()..update(updates)).build();

  _$Other._(
      {this.id,
      this.title,
      this.type,
      this.poster,
      this.year,
      this.imdbrate,
      this.genre,
      this.views,
      this.story,
      this.category,
      this.serverip})
      : super._();

  @override
  Other rebuild(void updates(OtherBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  OtherBuilder toBuilder() => new OtherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Other &&
        id == other.id &&
        title == other.title &&
        type == other.type &&
        poster == other.poster &&
        year == other.year &&
        imdbrate == other.imdbrate &&
        genre == other.genre &&
        views == other.views &&
        story == other.story &&
        category == other.category &&
        serverip == other.serverip;
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
                                        $jc($jc(0, id.hashCode),
                                            title.hashCode),
                                        type.hashCode),
                                    poster.hashCode),
                                year.hashCode),
                            imdbrate.hashCode),
                        genre.hashCode),
                    views.hashCode),
                story.hashCode),
            category.hashCode),
        serverip.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Other')
          ..add('id', id)
          ..add('title', title)
          ..add('type', type)
          ..add('poster', poster)
          ..add('year', year)
          ..add('imdbrate', imdbrate)
          ..add('genre', genre)
          ..add('views', views)
          ..add('story', story)
          ..add('category', category)
          ..add('serverip', serverip))
        .toString();
  }
}

class OtherBuilder implements Builder<Other, OtherBuilder> {
  _$Other _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  String _year;
  String get year => _$this._year;
  set year(String year) => _$this._year = year;

  String _imdbrate;
  String get imdbrate => _$this._imdbrate;
  set imdbrate(String imdbrate) => _$this._imdbrate = imdbrate;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  String _views;
  String get views => _$this._views;
  set views(String views) => _$this._views = views;

  String _story;
  String get story => _$this._story;
  set story(String story) => _$this._story = story;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _serverip;
  String get serverip => _$this._serverip;
  set serverip(String serverip) => _$this._serverip = serverip;

  OtherBuilder();

  OtherBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _type = _$v.type;
      _poster = _$v.poster;
      _year = _$v.year;
      _imdbrate = _$v.imdbrate;
      _genre = _$v.genre;
      _views = _$v.views;
      _story = _$v.story;
      _category = _$v.category;
      _serverip = _$v.serverip;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Other other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Other;
  }

  @override
  void update(void updates(OtherBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Other build() {
    final _$result = _$v ??
        new _$Other._(
            id: id,
            title: title,
            type: type,
            poster: poster,
            year: year,
            imdbrate: imdbrate,
            genre: genre,
            views: views,
            story: story,
            category: category,
            serverip: serverip);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
