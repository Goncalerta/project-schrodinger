import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import 'steps/courses_selected.dart';
import 'steps/created_schedule.dart';
import 'steps/logged_in.dart';
import 'steps/tap_first.dart';
import 'steps/unselect_all_courses.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r'test_driver/features/**.feature')]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './test_report.json')
    ]
    ..stepDefinitions = [loggedIn(), coursesSelected(), createdSchedule(),
      tapFirst(), unselectAllCourses()]
    ..customStepParameterDefinitions = []
    ..restartAppBetweenScenarios = true
    ..targetAppPath = 'test_driver/app.dart'
    ..defaultTimeout = Duration(minutes: 1);
  return GherkinRunner().execute(config);
}