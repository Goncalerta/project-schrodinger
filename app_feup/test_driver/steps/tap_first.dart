import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric tapFirst() {
  return given2<String, String, FlutterWorld>(
    'I tap the first child of type {string} of the widget of type {string}',
        (child, parent, context) async {
      await FlutterDriverUtils.tap(
          context.world.driver,
          find.descendant(
            of: find.byType(parent),
            matching: find.byType(child),
            firstMatchOnly: true,
          )
      );
    },
  );
}
