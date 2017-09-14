import 'dart:async';
import 'dart:html';

import 'package:pageloader/objects.dart';

class CardPO {
  @ByClass('question')
  PageLoaderElement _question;

  Future<String> get question => _question.visibleText;

  @ByTagName('material-select-item')
  List<PageLoaderElement> options;

  Future clickOption(int index) => options[index].click();

  @optional
  @ByClass('selected')
  PageLoaderElement _answer;

  Future<String> get answer async => (await _answer)?.visibleText;

  @optional
  @ByClass('check')
  PageLoaderElement isCorrect;

  @optional
  @ByClass('cancel')
  PageLoaderElement isIncorrect;
}
