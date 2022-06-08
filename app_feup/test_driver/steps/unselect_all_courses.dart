import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric unselectAllCourses() {
  return given<FlutterWorld>(
    'I don\'t have courses selected for class registration',
        (context) async {
      while (true) {
        final isNotSelected = await FlutterDriverUtils.isPresent(
          context.world.driver,
          find.text('Nenhuma unidade curricular'),
        );

        if (isNotSelected) {
          return;
        }

        final iconFinder = find.byValueKey('create_new_schedule');

        await context.world.driver?.scrollIntoView(
          iconFinder,
        );
        await FlutterDriverUtils.tap(
          context.world.driver,
          iconFinder,
        );

        final String courseUnit = await FlutterDriverUtils.getText(
          context.world.driver,
            find.descendant(
              of: find.byType('ExpansionTile'),
              matching: find.byType('Text'),
              firstMatchOnly: true,
            )
        );

        await FlutterDriverUtils.tap(
          context.world.driver,
          find.pageBack(),
        );

        FlutterDriverUtils.tap(context.world.driver,
            find.byValueKey('select_courses_card'));

        await FlutterDriverUtils.tap(
            context.world.driver,
            find.descendant(
              of: find.byType('ListView'),
              matching: find.text(courseUnit),
              firstMatchOnly: true,
            )
        );

        await FlutterDriverUtils.tap(
          context.world.driver,
          find.pageBack(),
        );
      }
    },
  );
}
