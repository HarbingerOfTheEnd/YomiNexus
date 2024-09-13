import 'package:flutter/material.dart';
import 'package:yominexus/ui/library/novel/novel_library_view.dart';

@immutable
class Constants {
  const Constants._();

  static const String initialRoute = NovelLibraryView.routeName;
  static final Map<String, WidgetBuilder> routes = {
    NovelLibraryView.routeName: (context) => const NovelLibraryView(),
  };
}
