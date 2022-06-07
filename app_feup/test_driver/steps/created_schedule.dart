import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric createdSchedule() {
  return given1<String, FlutterWorld>(
      'I have a schedule named {string}',
        (scheduleName, context) async {
      final exists = await FlutterDriverUtils.isPresent(
        context.world.driver,
        find.text(scheduleName),
      );

      if (exists) {
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

      final inputFinder = find.byValueKey('rename_schedule_input');
      await context.world.driver.scrollIntoView(inputFinder);
      await FlutterDriverUtils.enterText(
        context.world.driver,
        inputFinder,
        scheduleName,
      );

      await FlutterDriverUtils.tap(
        context.world.driver,
        find.pageBack(),
      );
    },
  );
}
