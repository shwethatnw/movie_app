library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'api_error.dart';
import 'app_state.dart';
import 'cast.dart';
import 'movie.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  ApiError,
  Movie,
  Cast

])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
