
import 'simple_shortcuts_platform_interface.dart';

class SimpleShortcuts {
  Future<String?> getPlatformVersion() {
    return SimpleShortcutsPlatform.instance.getPlatformVersion();
  }
}
