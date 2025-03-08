import 'dart:core';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'cast.g.dart';

abstract class Cast implements Built<Cast, CastBuilder> {
  factory Cast([void Function(CastBuilder) updates]) = _$Cast;


  Cast._();

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Cast.serializer, this)!
    as Map<String, dynamic>;
  }

  static Cast fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Cast.serializer, json)!;
  }

  static Serializer<Cast> get serializer => _$castSerializer;

  bool? get adult;

  int get gender;

  int get id;

  String? get knownForDepartment;

  String? get name;

  String? get originalName;

  double? get popularity;

  String? get profilePath;

  int get castId;

  String? get character;

  String? get creditId;

  int get order;
}