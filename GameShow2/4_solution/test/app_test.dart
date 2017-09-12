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
CardPO cardPO;

@AngularEntrypoint()
void main() {
  final testBed = new NgTestBed<AppComponent>();

  setUp(() async {
    fixture = await testBed.create();
    appPO = await fixture.resolvePageObject(AppPO);
    cardPO = appPO._card;
  });

  tearDown(disposeAnyRunningTest);

  test('title', () async {
    expect(await appPO.title, 'My First AngularDart Game!');
  });

  group('card', () {
    test('shows question', () async {
      expect(await cardPO.question,
          'What do the letters of the popular fast food chain KFC stand for?');
    });

    test('shows options', () async {
      expect(await cardPO.options[0].visibleText, '1. Kentucky Fried Chicken');
      expect(await cardPO.options[1].visibleText, '2. Kitchen Fresh Chicken');
      expect(await cardPO.options[2].visibleText, '3. Finger Lickin\' Good');
      expect(await cardPO.options[3].visibleText, '4. Keep Fingers Crossed');
    });

    test('shows correct if user chose correct option', () async {
      expect(await cardPO.isCorrect, isNull);
      expect(await cardPO.isIncorrect, isNull);

      await cardPO.clickOption(0);

      // Get an updated view of the page object.
      cardPO = await fixture.resolvePageObject(CardPO);

      expect(await cardPO.isCorrect, isNotNull);
      expect(await cardPO.isIncorrect, isNull);
    });

    test('shows incorrect if user chose incorrect option 2', () async {
      await (cardPO.clickOption(1));

      // Get an updated view of the page object.
      cardPO = await fixture.resolvePageObject(CardPO);

      expect(await cardPO.isIncorrect, isNotNull);
      expect(await cardPO.isCorrect, isNull);
    });

    test('shows incorrect if user chose incorrect option 3', () async {
      await (cardPO.clickOption(2));

      // Get an updated view of the page object.
      cardPO = await fixture.resolvePageObject(CardPO);

      expect(await cardPO.isIncorrect, isNotNull);
      expect(await cardPO.isCorrect, isNull);
    });

    test('shows incorrect if user chose incorrect option 4', () async {
      await (cardPO.clickOption(3));

      // Get an updated view of the page object.
      cardPO = await fixture.resolvePageObject(CardPO);

      expect(await cardPO.isIncorrect, isNotNull);
      expect(await cardPO.isCorrect, isNull);
    });

    test('shows correct if user chose correct option', () async {
      await (cardPO.clickOption(3));

      // Get an updated view of the page object.
      cardPO = await fixture.resolvePageObject(CardPO);

      expect(await cardPO.isIncorrect, isNotNull);
      expect(await cardPO.isCorrect, isNull);

      await (cardPO.clickOption(0));

      // Get an updated view of the page object.
      cardPO = await fixture.resolvePageObject(CardPO);

      expect(await cardPO.isCorrect, isNotNull);
      expect(await cardPO.isIncorrect, isNull);
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
