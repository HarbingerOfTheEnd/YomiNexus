import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yominexus/core/constants.dart';

import 'app.dart';

void main() async {
  await Constants.init();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
