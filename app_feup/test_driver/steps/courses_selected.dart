import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric coursesSelected() {
  return given<FlutterWorld>(
    'I have courses selected for class registration',
        (context) async {
      final isNotSelected = await FlutterDriverUtils.isPresent(
            context.world.driver,
            find.text('Nenhuma unidade curricular'),
      );

      if (!isNotSelected) {
        return;
      }

      FlutterDriverUtils.tap(context.world.driver,
          find.byValueKey('select_courses_card'));

      await FlutterDriverUtils.tap(
        context.world.driver,
        find.descendant(
          of: find.byType('ListView'),
          matching: find.byType('CheckboxListTile'),
          firstMatchOnly: true,
        )
      );

      await FlutterDriverUtils.tap(
        context.world.driver,
        find.pageBack(),
      );
    },
  );
}
