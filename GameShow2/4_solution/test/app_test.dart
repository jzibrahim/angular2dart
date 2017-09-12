@Tags(const ['aot'])
@TestOn('browser')
import 'dart:async';

import 'card_po.dart';

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
    expect(await appPO.title, 'My First AngularDart Game!');
  });

  group('card', () {
    test('shows question', () async {
      expect(await appPO._card.question,
          'What do the letters of the popular fast food chain KFC stand for?');
    });

    test('shows options', () async {
      expect(await appPO._card.options[0].visibleText,
          '1. Kentucky Fried Chicken');
      expect(
          await appPO._card.options[1].visibleText, '2. Kitchen Fresh Chicken');
      expect(
          await appPO._card.options[2].visibleText, '3. Finger Lickin\' Good');
      expect(
          await appPO._card.options[3].visibleText, '4. Keep Fingers Crossed');
    });

    test('shows correct if user chose correct option', () async {
      expect(await appPO._card.isCorrect, isNull);
      expect(await appPO._card.isIncorrect, isNull);

      await appPO._card.clickOption(0);
      appPO = await fixture.resolvePageObject(AppPO);

      expect(await appPO._card.isCorrect, isNotNull);
      expect(await appPO._card.isIncorrect, isNull);
    });

    test('shows incorrect if user chose incorrect option 2', () async {
      await (appPO._card.clickOption(1));
      appPO = await fixture.resolvePageObject(AppPO);

      expect(await appPO._card.isIncorrect, isNotNull);
      expect(await appPO._card.isCorrect, isNull);
    });

    test('shows incorrect if user chose incorrect option 3', () async {
      await (appPO._card.clickOption(2));
      appPO = await fixture.resolvePageObject(AppPO);

      expect(await appPO._card.isIncorrect, isNotNull);
      expect(await appPO._card.isCorrect, isNull);
    });

    test('shows incorrect if user chose incorrect option 4', () async {
      await (appPO._card.clickOption(3));
      appPO = await fixture.resolvePageObject(AppPO);

      expect(await appPO._card.isIncorrect, isNotNull);
      expect(await appPO._card.isCorrect, isNull);
    });

    test('shows correct if user chose correct option', () async {
      await (appPO._card.clickOption(3));
      appPO = await fixture.resolvePageObject(AppPO);

      expect(await appPO._card.isIncorrect, isNotNull);
      expect(await appPO._card.isCorrect, isNull);

      await (appPO._card.clickOption(0));
      appPO = await fixture.resolvePageObject(AppPO);

      expect(await appPO._card.isCorrect, isNotNull);
      expect(await appPO._card.isIncorrect, isNull);
    });
  });

  // Testing info: https://webdev.dartlang.org/angular/guide/testing
}

class AppPO {
  @ByTagName('h1')
  PageLoaderElement _title;

  Future<String> get title => _title.visibleText;

  @ByTagName('card')
  CardPO _card;
}
