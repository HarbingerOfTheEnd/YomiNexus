import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yominexus/core/constants.dart';

part 'shared_preferences_provider.g.dart';

@riverpod
Future<SharedPreferencesWithCache> sharedPreferences(
  SharedPreferencesRef _,
) async {
  return await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
      allowList: Constants.allowList,
    ),
  );
}
