@Tags(const ['aot'])
@TestOn('browser')
import 'dart:async';

// TODO Milestone 4: Create page object for the card component and import it here.

import 'package:angular/angular.dart';
import 'package:angular_test/angular_test.dart';
import 'package:GameShow/app_component.dart';
import 'package:pageloader/html.dart';
import 'package:pageloader/objects.dart';
import 'package:test/test.dart';

NgTestFixture<AppComponent> fixture;
AppPO appPO;

@AngularEntrypoint()
void main() {
  final testBed = new NgTestBed<AppComponent>();

  setUp(() async {
    fixture = await testBed.create();
    appPO = await fixture.resolvePageObject(AppPO);
  });

  tearDown(disposeAnyRunningTest);

  test('title', () async {
    // TODO Milestone 4 - Replace with actual implementation of test.
    expect(true, isFalse);

    // TODO Milestone 4 - Test that the title is shown correctly.
  });

  group('card', () {
    test('shows question', () async {
      // TODO Milestone 4 - Replace with actual implementation of test.
      expect(true, isFalse);

      // TODO Milestone 4 - Test that the question is shown correctly.
    });

    test('shows options', () async {
      // TODO Milestone 4 - Replace with actual implementation of test.
      expect(true, isFalse);

      // TODO Milestone 4 - Test that the options are shown correctly.
    });

    test('shows correct if user chose correct option', () async {
      // TODO Milestone 4 - Replace with actual implementation of test.
      expect(true, isFalse);

      // TODO Milestone 4 - Test that initially, "correct" or "incorrect" are hidden.

      // TODO Milestone 4 - Click correct option.

      appPO = await fixture.resolvePageObject(AppPO);

      // TODO Milestone 4 - Test that "correct" is shown and "incorrect" is hidden.
    });

    test('shows incorrect if user chose incorrect option 2', () async {
      // TODO Milestone 4 - Replace with actual implementation of test.
      expect(true, isFalse);

      // TODO Milestone 4 - Click incorrect option.

      appPO = await fixture.resolvePageObject(AppPO);

      // TODO Milestone 4 - Test that "incorrect" is shown and "correct" is hidden.
    });

    // TODO Milestone 4 - add more tests as desired.
  });

  // Testing info: https://webdev.dartlang.org/angular/guide/testing
}

class AppPO {
  @ByTagName('h1')
  PageLoaderElement _title;

  Future<String> get title => _title.visibleText;

/* TODO Milestone 4 - Use CardPO.
  @ByTagName('card')
  CardPO _card;
  */
}
