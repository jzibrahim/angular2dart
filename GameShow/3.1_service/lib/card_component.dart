import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/src/common/directives.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:game/card.dart';

@Component(
    selector: 'card',
    templateUrl: 'card_component.html',
    styleUrls: const ['card_component.css'],
    directives: const [materialDirectives, NgIf],
    providers: const [materialProviders])
class CardComponent {
  @Input('card')
  Card card;

  @Output()
  var onAnswered = new EventEmitter<bool>();

  bool right;

  void answer(MaterialRadioGroupComponent options) {
    right = card.answer == options.selected;

    if (right) {
      new Future.delayed(const Duration(seconds: 3), () {
        onAnswered.emit(right);
        right = null;
        options.selected = 0;
      });
    }
  }
}
