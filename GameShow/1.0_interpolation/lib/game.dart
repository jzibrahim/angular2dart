import 'package:angular2/core.dart';

@Component(
    selector: 'game',
    template: '<h1>Hi {{name}}!</h1>')
class GameComponent {
  String name = 'Jennie';
}
