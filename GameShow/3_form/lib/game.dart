import 'package:angular2/core.dart';
import 'package:angular2/src/common/directives.dart';
import 'package:angular2_components/angular2_components.dart';

@Component(
    selector: 'game',
    templateUrl: 'game.html',
    styleUrls: const ['game.css'],
    directives: const [materialDirectives],
    providers: const [materialProviders])
class GameComponent {
  bool showMessage = false;

  void play(name, level) {
    if (name.isNotEmpty) {
      showMessage = true;
    }
  }
}
