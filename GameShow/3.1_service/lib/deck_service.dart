import 'dart:math' show Random;

import 'package:angular2/core.dart';
import 'package:game/card.dart';

@Injectable()
class DeckService {
  static final Random _indexGen = new Random();

  // All trivia from http://trivia.fyi/.
  final _easyDeck = <Card>[
    new Card(
        'True or False: Dogs have three heart chambers', ['True', 'False'], 1),
    new Card(
        'In what type of restaurant would you typically find the condiment wasabi?',
        ['Chinese', 'Vietnamese', 'Thai', 'Japanese'],
        3),
    new Card(
        'What do the letters of the popular fast food chain KFC stand for?',
        [
          'Kentucky Fried Chicken',
          'Finger Lickin\' Good',
          'Kitchen Fresh Chicken',
          'Keep Fingers Crossed'
        ],
        0),
    new Card('What is the melting point of water in Fahrenheit?',
        ['400°F', '350°F', '100°F', '0°F', '32°F'], 4),
    new Card('What is a group of rhinoceros called?',
        ['A herd', 'Rhinos', 'A crash', 'A school'], 2),
    new Card(
        'Mr. Pibb was a soft drink created by the Coca-Cola Company to compete with what other soft drink?',
        ['Dr Pepper', 'Fanta', 'Pepsi', 'Sprite Zero'],
        0),
    new Card(
        'What is name of the scale used to measure the spicy heat of peppers',
        ['Fahrenheit', 'Scoville scale', 'Heat index', 'Hot scale'],
        1),
    new Card('Pho is a popular noodle soup from what country?',
        ['Japan', 'China', 'Vietnam', 'Honduras'], 2)
  ];
final _hardDeck = <Card>[
    new Card('What is the most popular board game of all time?',
        ['Monopoly', 'Chess', 'Scrabble', 'Soccer'], 1),
    new Card(
        'Which Patriot leader organized the Boston Tea Party in 1773?',
        [
          'Samuel Adams',
          'George Washington',
          'Abraham Lincoln',
          'Bill Clinton'
        ],
        0),
    new Card('What does the "B" stand for in Lyndon B. Johnson?',
        ['Baines', 'Bill', 'Borez', 'Ben'], 0),
    new Card('In what year did India gain its independence from Britain?',
        ['1912', '1776', '1947', 'They never did'], 2),
    new Card('What was the first commercial product that had a Barcode?',
        ['Coca Cola', 'Snickers', 'Wrigley’s Juicy Fruit Gum', 'Kleenex'], 2),
    new Card(
        'A puggle is a cross between which two dog breeds?',
        [
          'Poodle and Pug',
          'Pugs and Bulldogs',
          'Pug and Beagle',
          'Beagle and Greyhound'
        ],
        2),
    new Card('Polar bears feed mainly on what animal?',
        ['Seals', 'Salmon', 'Fish', 'Penguins'], 0),
    new Card('What is the capital of Iceland?',
        ['Selfoss', 'Reykjavik', 'Keflavík', 'Mosfellsbær'], 1)
  ];

  Card getCard(Level level) {
    return level == Level.EASY
        ? _easyDeck[_indexGen.nextInt(_easyDeck.length)]
        : _hardDeck[_indexGen.nextInt(_hardDeck.length)];
  }
}
