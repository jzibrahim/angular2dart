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
  bool playing = false;

  Card card = new Card('What is your favorite color?', 'Blue', 'Yellow', OPTION1);

  void play(name, level) {
    if (name.isNotEmpty) {
      playing = true;
    }
  }

}
