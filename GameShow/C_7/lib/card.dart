enum Level { EASY, HARD }

class Card {
  String question;
  List<String> options;
  int answer;

  Card(this.question, this.options, this.answer);
}
