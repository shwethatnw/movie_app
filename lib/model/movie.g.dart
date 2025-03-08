// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object?> serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'genreIds',
      serializers.serialize(object.genreIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(int)),
      'releaseDate',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(int)),
      'voteCount',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.adult;
    if (value != null) {
      result
        ..add('adult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.backdropPath;
    if (value != null) {
      result
        ..add('backdropPath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalLanguage;
    if (value != null) {
      result
        ..add('originalLanguage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalTitle;
    if (value != null) {
      result
        ..add('originalTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.overview;
    if (value != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.posterPath;
    if (value != null) {
      result
        ..add('posterPath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.average;
    if (value != null) {
      result
        ..add('average')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'backdropPath':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genreIds':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'originalLanguage':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'originalTitle':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'posterPath':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'releaseDate':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'average':
          result.average = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'voteCount':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final bool? adult;
  @override
  final String? backdropPath;
  @override
  final BuiltList<int> genreIds;
  @override
  final int id;
  @override
  final String? originalLanguage;
  @override
  final String? originalTitle;
  @override
  final String? overview;
  @override
  final int popularity;
  @override
  final String? posterPath;
  @override
  final int releaseDate;
  @override
  final String? title;
  @override
  final bool? video;
  @override
  final double? average;
  @override
  final int voteCount;

  factory _$Movie([void Function(MovieBuilder)? updates]) =>
      (new MovieBuilder()..update(updates))._build();

  _$Movie._(
      {this.adult,
      this.backdropPath,
      required this.genreIds,
      required this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      required this.popularity,
      this.posterPath,
      required this.releaseDate,
      this.title,
      this.video,
      this.average,
      required this.voteCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(genreIds, r'Movie', 'genreIds');
    BuiltValueNullFieldError.checkNotNull(id, r'Movie', 'id');
    BuiltValueNullFieldError.checkNotNull(popularity, r'Movie', 'popularity');
    BuiltValueNullFieldError.checkNotNull(releaseDate, r'Movie', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(voteCount, r'Movie', 'voteCount');
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        genreIds == other.genreIds &&
        id == other.id &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        releaseDate == other.releaseDate &&
        title == other.title &&
        video == other.video &&
        average == other.average &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, backdropPath.hashCode);
    _$hash = $jc(_$hash, genreIds.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, originalLanguage.hashCode);
    _$hash = $jc(_$hash, originalTitle.hashCode);
    _$hash = $jc(_$hash, overview.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, posterPath.hashCode);
    _$hash = $jc(_$hash, releaseDate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, average.hashCode);
    _$hash = $jc(_$hash, voteCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Movie')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('genreIds', genreIds)
          ..add('id', id)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('releaseDate', releaseDate)
          ..add('title', title)
          ..add('video', video)
          ..add('average', average)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  ListBuilder<int>? _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int>? genreIds) => _$this._genreIds = genreIds;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  int? _popularity;
  int? get popularity => _$this._popularity;
  set popularity(int? popularity) => _$this._popularity = popularity;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  int? _releaseDate;
  int? get releaseDate => _$this._releaseDate;
  set releaseDate(int? releaseDate) => _$this._releaseDate = releaseDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  double? _average;
  double? get average => _$this._average;
  set average(double? average) => _$this._average = average;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  MovieBuilder();

  MovieBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdropPath = $v.backdropPath;
      _genreIds = $v.genreIds.toBuilder();
      _id = $v.id;
      _originalLanguage = $v.originalLanguage;
      _originalTitle = $v.originalTitle;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _releaseDate = $v.releaseDate;
      _title = $v.title;
      _video = $v.video;
      _average = $v.average;
      _voteCount = $v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Movie build() => _build();

  _$Movie _build() {
    _$Movie _$result;
    try {
      _$result = _$v ??
          new _$Movie._(
            adult: adult,
            backdropPath: backdropPath,
            genreIds: genreIds.build(),
            id: BuiltValueNullFieldError.checkNotNull(id, r'Movie', 'id'),
            originalLanguage: originalLanguage,
            originalTitle: originalTitle,
            overview: overview,
            popularity: BuiltValueNullFieldError.checkNotNull(
                popularity, r'Movie', 'popularity'),
            posterPath: posterPath,
            releaseDate: BuiltValueNullFieldError.checkNotNull(
                releaseDate, r'Movie', 'releaseDate'),
            title: title,
            video: video,
            average: average,
            voteCount: BuiltValueNullFieldError.checkNotNull(
                voteCount, r'Movie', 'voteCount'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genreIds';
        genreIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Movie', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
