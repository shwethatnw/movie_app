// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Cast> _$castSerializer = new _$CastSerializer();

class _$CastSerializer implements StructuredSerializer<Cast> {
  @override
  final Iterable<Type> types = const [Cast, _$Cast];
  @override
  final String wireName = 'Cast';

  @override
  Iterable<Object?> serialize(Serializers serializers, Cast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'gender',
      serializers.serialize(object.gender, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'castId',
      serializers.serialize(object.castId, specifiedType: const FullType(int)),
      'order',
      serializers.serialize(object.order, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.adult;
    if (value != null) {
      result
        ..add('adult')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.knownForDepartment;
    if (value != null) {
      result
        ..add('knownForDepartment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalName;
    if (value != null) {
      result
        ..add('originalName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.popularity;
    if (value != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.profilePath;
    if (value != null) {
      result
        ..add('profilePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.character;
    if (value != null) {
      result
        ..add('character')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creditId;
    if (value != null) {
      result
        ..add('creditId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Cast deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CastBuilder();

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
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'knownForDepartment':
          result.knownForDepartment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'originalName':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'profilePath':
          result.profilePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'castId':
          result.castId = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creditId':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Cast extends Cast {
  @override
  final bool? adult;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String? knownForDepartment;
  @override
  final String? name;
  @override
  final String? originalName;
  @override
  final double? popularity;
  @override
  final String? profilePath;
  @override
  final int castId;
  @override
  final String? character;
  @override
  final String? creditId;
  @override
  final int order;

  factory _$Cast([void Function(CastBuilder)? updates]) =>
      (new CastBuilder()..update(updates))._build();

  _$Cast._(
      {this.adult,
      required this.gender,
      required this.id,
      this.knownForDepartment,
      this.name,
      this.originalName,
      this.popularity,
      this.profilePath,
      required this.castId,
      this.character,
      this.creditId,
      required this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(gender, r'Cast', 'gender');
    BuiltValueNullFieldError.checkNotNull(id, r'Cast', 'id');
    BuiltValueNullFieldError.checkNotNull(castId, r'Cast', 'castId');
    BuiltValueNullFieldError.checkNotNull(order, r'Cast', 'order');
  }

  @override
  Cast rebuild(void Function(CastBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CastBuilder toBuilder() => new CastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cast &&
        adult == other.adult &&
        gender == other.gender &&
        id == other.id &&
        knownForDepartment == other.knownForDepartment &&
        name == other.name &&
        originalName == other.originalName &&
        popularity == other.popularity &&
        profilePath == other.profilePath &&
        castId == other.castId &&
        character == other.character &&
        creditId == other.creditId &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adult.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, knownForDepartment.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, originalName.hashCode);
    _$hash = $jc(_$hash, popularity.hashCode);
    _$hash = $jc(_$hash, profilePath.hashCode);
    _$hash = $jc(_$hash, castId.hashCode);
    _$hash = $jc(_$hash, character.hashCode);
    _$hash = $jc(_$hash, creditId.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Cast')
          ..add('adult', adult)
          ..add('gender', gender)
          ..add('id', id)
          ..add('knownForDepartment', knownForDepartment)
          ..add('name', name)
          ..add('originalName', originalName)
          ..add('popularity', popularity)
          ..add('profilePath', profilePath)
          ..add('castId', castId)
          ..add('character', character)
          ..add('creditId', creditId)
          ..add('order', order))
        .toString();
  }
}

class CastBuilder implements Builder<Cast, CastBuilder> {
  _$Cast? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _knownForDepartment;
  String? get knownForDepartment => _$this._knownForDepartment;
  set knownForDepartment(String? knownForDepartment) =>
      _$this._knownForDepartment = knownForDepartment;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _originalName;
  String? get originalName => _$this._originalName;
  set originalName(String? originalName) => _$this._originalName = originalName;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _profilePath;
  String? get profilePath => _$this._profilePath;
  set profilePath(String? profilePath) => _$this._profilePath = profilePath;

  int? _castId;
  int? get castId => _$this._castId;
  set castId(int? castId) => _$this._castId = castId;

  String? _character;
  String? get character => _$this._character;
  set character(String? character) => _$this._character = character;

  String? _creditId;
  String? get creditId => _$this._creditId;
  set creditId(String? creditId) => _$this._creditId = creditId;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  CastBuilder();

  CastBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _gender = $v.gender;
      _id = $v.id;
      _knownForDepartment = $v.knownForDepartment;
      _name = $v.name;
      _originalName = $v.originalName;
      _popularity = $v.popularity;
      _profilePath = $v.profilePath;
      _castId = $v.castId;
      _character = $v.character;
      _creditId = $v.creditId;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cast other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cast;
  }

  @override
  void update(void Function(CastBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Cast build() => _build();

  _$Cast _build() {
    final _$result = _$v ??
        new _$Cast._(
          adult: adult,
          gender:
              BuiltValueNullFieldError.checkNotNull(gender, r'Cast', 'gender'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'Cast', 'id'),
          knownForDepartment: knownForDepartment,
          name: name,
          originalName: originalName,
          popularity: popularity,
          profilePath: profilePath,
          castId:
              BuiltValueNullFieldError.checkNotNull(castId, r'Cast', 'castId'),
          character: character,
          creditId: creditId,
          order: BuiltValueNullFieldError.checkNotNull(order, r'Cast', 'order'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
