import 'package:custom_comparator/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('tolerance comparator example', (tester) async {
    const widget = MyHomePage(
      title: 'hello golden toolkit',
    );
    final builder = DeviceBuilder()
      ..addScenario(name: 'default page', widget: widget);

    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'main');
  });
}
