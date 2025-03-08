library ui;

// export only major dependencies
export 'package:flutter/cupertino.dart' hide RefreshCallback;
export 'package:flutter/material.dart';
export 'package:flutter/services.dart';
export 'package:provider/provider.dart';
export 'package:movie_app/provider/provider_utils.dart';
export 'package:movie_app/shared.dart'; // shared
export 'package:movie_app/views/navigation/router_utils.dart';
export 'package:movie_app/views/widgets/always_disabled_focus_node.dart';
export 'package:movie_app/views/widgets/app_bar.dart';
export 'package:movie_app/views/widgets/app_icon.dart';
export 'package:movie_app/views/widgets/app_progress_indicator.dart';
export 'package:movie_app/views/widgets/app_scaffold.dart';
export 'package:movie_app/views/widgets/app_texts.dart';
export 'package:movie_app/views/widgets/extensions.dart';
export 'package:movie_app/views/widgets/mixins.dart';
