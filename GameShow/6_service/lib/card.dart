enum Option { OPTION1, OPTION2, OPTION3, OPTION4 }
enum Level { EASY, HARD }

class Card {
  String question;
  String option1;
  String option2;
  String option3;
  String option4;
  Option answer;

  Card(this.question, this.option1, this.option2, this.option3, this.option4,
      this.answer);
}
