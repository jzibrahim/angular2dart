import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:angular2/src/common/directives.dart';
import 'package:game/card.dart';
import 'package:game/card_component.dart';
import 'package:game/deck_service.dart';

@Component(
    selector: 'game',
    templateUrl: 'game.html',
    styleUrls: const ['game.css'],
    directives: const [materialDirectives, CardComponent, NgIf],
    providers: const [materialProviders, DeckService])
class GameComponent {
  final EASY = Level.EASY;
  final HARD = Level.HARD;

  DeckService deckService;
  bool submitted = false;

  GameComponent(this.deckService);

  String name = '';
  Card card;
  Level level;

  void play() {
    submitted = true;
    card = deckService.getCard(level);
  }

  void next(Level level) {
    card = deckService.getCard(level);
  }
}
