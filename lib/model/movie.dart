import 'dart:core';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {

  factory Movie([void Function(MovieBuilder) updates]) = _$Movie;
  Movie._();

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Movie.serializer, this)!
        as Map<String, dynamic>;
  }

  static Movie fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Movie.serializer, json)!;
  }

  static Serializer<Movie> get serializer => _$movieSerializer;

  bool? get adult;

  String? get backdropPath;

  BuiltList<int> get genreIds;

  int get id;

  String? get originalLanguage;

  String? get originalTitle;

  String? get overview;

  int get popularity;

  String? get posterPath;

  int get releaseDate;

  String? get title;

  bool? get video;

  double? get average;

  int get voteCount;
}
