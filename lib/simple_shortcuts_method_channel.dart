import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'simple_shortcuts_platform_interface.dart';

/// An implementation of [SimpleShortcutsPlatform] that uses method channels.
class MethodChannelSimpleShortcuts extends SimpleShortcutsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_shortcuts');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
