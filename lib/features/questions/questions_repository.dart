import 'package:isar/isar.dart';

import '../core/isar.dart';
import 'question.dart';

QuestionsRepository questionsRepository = QuestionsRepository();

class QuestionsRepository {
  Stream<List<Question>> watchQuestions() => isar.questions.where().watch();
  setQuestion(Question question) =>
      isar.write((isar) => isar.questions.put(question));
}
