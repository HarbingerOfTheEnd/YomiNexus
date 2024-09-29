import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yominexus/core/constants.dart';
import 'package:yominexus/core/extensions.dart';

part 'amoled_provider.g.dart';

@riverpod
class YominexusIsPureBlackDarkMode extends _$YominexusIsPureBlackDarkMode {
  @override
  bool build() {
    return Constants.sharedPreferences.getIsPureBlackDarkMode();
  }

  Future<void> setIsPureBlackDarkMode(bool isAmoled) async {
    Constants.sharedPreferences.setIsPureBlackDarkMode(isAmoled);

    state = isAmoled;
  }
}
