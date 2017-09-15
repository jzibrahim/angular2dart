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
}
