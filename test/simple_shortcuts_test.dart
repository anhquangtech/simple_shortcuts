import 'package:flutter_test/flutter_test.dart';
import 'package:simple_shortcuts/simple_shortcuts.dart';
import 'package:simple_shortcuts/simple_shortcuts_platform_interface.dart';
import 'package:simple_shortcuts/simple_shortcuts_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSimpleShortcutsPlatform
    with MockPlatformInterfaceMixin
    implements SimpleShortcutsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SimpleShortcutsPlatform initialPlatform = SimpleShortcutsPlatform.instance;

  test('$MethodChannelSimpleShortcuts is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSimpleShortcuts>());
  });

  test('getPlatformVersion', () async {
    SimpleShortcuts simpleShortcutsPlugin = SimpleShortcuts();
    MockSimpleShortcutsPlatform fakePlatform = MockSimpleShortcutsPlatform();
    SimpleShortcutsPlatform.instance = fakePlatform;

    expect(await simpleShortcutsPlugin.getPlatformVersion(), '42');
  });
}
