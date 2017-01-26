import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'game',
    templateUrl: 'game.html',
    directives: const [materialDirectives],
    providers: const [materialProviders])
class GameComponent {
  var name;
  var myLevel;
  bool submitted = false;

  void play() {
    submitted = true;
  }
}
