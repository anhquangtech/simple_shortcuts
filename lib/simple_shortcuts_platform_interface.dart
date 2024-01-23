import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'simple_shortcuts_method_channel.dart';

abstract class SimpleShortcutsPlatform extends PlatformInterface {
  /// Constructs a SimpleShortcutsPlatform.
  SimpleShortcutsPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleShortcutsPlatform _instance = MethodChannelSimpleShortcuts();

  /// The default instance of [SimpleShortcutsPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleShortcuts].
  static SimpleShortcutsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleShortcutsPlatform] when
  /// they register themselves.
  static set instance(SimpleShortcutsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
