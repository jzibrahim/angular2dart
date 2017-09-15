import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'card.dart';

@Component(
  selector: 'card',
  styleUrls: const ['card_component.css'],
  templateUrl: 'card_component.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
)
class CardComponent {
  final Card card = new Card(
      'What do the letters of the popular fast food chain KFC stand for?',
      const [
        'Kentucky Fried Chicken',
        'Kitchen Fresh Chicken',
        'Finger Lickin\' Good',
        'Keep Fingers Crossed'
      ],
      0);
}
