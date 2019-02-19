import 'package:meta/meta.dart';

class Post {
  List<Movie> movies;
  List<Other> other;

  Post({@required this.movies, @required this.other});

  Post.fromJson(Map<String, dynamic> json) {
    if (json['movies'] != null) {
      movies = new List<Movie>();
      json['movies'].forEach((v) {
        movies.add(new Movie.fromJson(v));
      });
    }
    if (json['other'] != null) {
      other = new List<Other>();
      json['other'].forEach((v) {
        other.add(new Other.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movies != null) {
      data['movies'] = this.movies.map((v) => v.toJson()).toList();
    }
    if (this.other != null) {
      data['other'] = this.other.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Movie {
  String id;
  String uniqid;
  String title;
  String imdb;
  String type;
  String trailer;
  String director;
  String writer;
  String cast;
  String story;
  String genre;
  String year;
  String mpr;
  String runtime;
  String imdbrate;
  String production;
  String poster;
  String background;
  String language;
  String approved;
  String adddate;
  String addby;
  String featured;
  String large;
  String lastupdate;
  String url;
  String hardsub;
  String views;
  String profile;
  String renc;
  String url360p;
  String alt;
  String flag;
  String soundextitle;
  String profile360;
  String slidetitle;
  String writers;
  String serverip;
  String hlsport;
  String playlist;
  String rate;
  String lang;
  String srt;
  String urladaptive;
  String url720;
  String url360;
  String category;
  String fileext;

  Movie(
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
      this.fileext});

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uniqid = json['uniqid'];
    title = json['title'];
    imdb = json['imdb'];
    type = json['type'];
    trailer = json['trailer'];
    director = json['director'];
    writer = json['writer'];
    cast = json['cast'];
    story = json['story'];
    genre = json['genre'];
    year = json['year'];
    mpr = json['mpr'];
    runtime = json['runtime'];
    imdbrate = json['imdbrate'];
    production = json['production'];
    poster = json['poster'];
    background = json['background'];
    language = json['language'];
    approved = json['approved'];
    adddate = json['adddate'];
    addby = json['addby'];
    featured = json['featured'];
    large = json['large'];
    lastupdate = json['lastupdate'];
    url = json['url'];
    hardsub = json['hardsub'];
    views = json['views'];
    profile = json['profile'];
    renc = json['renc'];
    url360p = json['url_360p'];
    alt = json['alt'];
    flag = json['flag'];
    soundextitle = json['soundextitle'];
    profile360 = json['profile_360'];
    slidetitle = json['slidetitle'];
    writers = json['writers'];
    serverip = json['serverip'];
    hlsport = json['hlsport'];
    playlist = json['playlist'];
    rate = json['rate'];
    lang = json['lang'];
    srt = json['srt'];
    urladaptive = json['urladaptive'];
    url720 = json['url720'];
    url360 = json['url360'];
    category = json['category'];
    fileext = json['fileext'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uniqid'] = this.uniqid;
    data['title'] = this.title;
    data['imdb'] = this.imdb;
    data['type'] = this.type;
    data['trailer'] = this.trailer;
    data['director'] = this.director;
    data['writer'] = this.writer;
    data['cast'] = this.cast;
    data['story'] = this.story;
    data['genre'] = this.genre;
    data['year'] = this.year;
    data['mpr'] = this.mpr;
    data['runtime'] = this.runtime;
    data['imdbrate'] = this.imdbrate;
    data['production'] = this.production;
    data['poster'] = this.poster;
    data['background'] = this.background;
    data['language'] = this.language;
    data['approved'] = this.approved;
    data['adddate'] = this.adddate;
    data['addby'] = this.addby;
    data['featured'] = this.featured;
    data['large'] = this.large;
    data['lastupdate'] = this.lastupdate;
    data['url'] = this.url;
    data['hardsub'] = this.hardsub;
    data['views'] = this.views;
    data['profile'] = this.profile;
    data['renc'] = this.renc;
    data['url_360p'] = this.url360p;
    data['alt'] = this.alt;
    data['flag'] = this.flag;
    data['soundextitle'] = this.soundextitle;
    data['profile_360'] = this.profile360;
    data['slidetitle'] = this.slidetitle;
    data['writers'] = this.writers;
    data['serverip'] = this.serverip;
    data['hlsport'] = this.hlsport;
    data['playlist'] = this.playlist;
    data['rate'] = this.rate;
    data['lang'] = this.lang;
    data['srt'] = this.srt;
    data['urladaptive'] = this.urladaptive;
    data['url720'] = this.url720;
    data['url360'] = this.url360;
    data['category'] = this.category;
    data['fileext'] = this.fileext;
    return data;
  }
}

class Other {
  String id;
  String title;
  String type;
  String poster;
  String year;
  String imdbrate;
  String genre;
  String views;
  String story;
  String category;
  String serverip;

  Other(
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
      this.serverip});

  Other.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    type = json['type'];
    poster = json['poster'];
    year = json['year'];
    imdbrate = json['imdbrate'];
    genre = json['genre'];
    views = json['views'];
    story = json['story'];
    category = json['category'];
    serverip = json['serverip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['type'] = this.type;
    data['poster'] = this.poster;
    data['year'] = this.year;
    data['imdbrate'] = this.imdbrate;
    data['genre'] = this.genre;
    data['views'] = this.views;
    data['story'] = this.story;
    data['category'] = this.category;
    data['serverip'] = this.serverip;
    return data;
  }
}
