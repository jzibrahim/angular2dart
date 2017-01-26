import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:game/card.dart';
import 'package:game/card_component.dart';

@Component(
    selector: 'game',
    templateUrl: 'game.html',
    styleUrls: const ['game.css'],
    directives: const [materialDirectives, CardComponent],
    providers: const [materialProviders])
class GameComponent {
  var name = '';
  var level;
  bool submitted = false;

  Card card = new Card('What is your favorite color?', ['Blue', 'Yellow'], 0);
}
