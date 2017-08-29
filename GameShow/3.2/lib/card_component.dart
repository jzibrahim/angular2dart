import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/src/common/directives.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:game/card.dart';

@Component(
    selector: 'card',
    templateUrl: 'card_component.html',
    styleUrls: const ['card_component.css'],
    directives: const [materialDirectives, NgIf, NgFor],
    providers: const [materialProviders])
class CardComponent {
  final _max = 300;
  
  @Input('card')
  Card card;

  @Output()
  var onAnswered = new EventEmitter<bool>();

  bool right;
  int _progress = 0;

  void answer(options) {
    right = card.answer == options;

    if (right) {
      new Timer.periodic(const Duration(milliseconds: 1), (Timer timer) {
        _progress++;
        if (_progress == _max) {
          onAnswered.emit(right);
          right = null;
          _progress = 0;
          timer.cancel();
        }
      });
    }
  }

  int get progress => (_progress / _max * 100).round();
}
