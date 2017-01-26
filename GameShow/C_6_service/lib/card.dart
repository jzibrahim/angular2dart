enum Level { EASY, HARD }

class Card {
  final String question;
  final List<String> options;
  final int answer;

  Card(this.question, this.options, this.answer);
}
