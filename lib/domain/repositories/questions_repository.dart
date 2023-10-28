part of 'repositories.dart';

QuestionsRepository questionsRepository = QuestionsRepository();

class QuestionsRepository {
  Stream<List<Question>> watchQuestions() => isar.questions.where().watch();
  setQuestion(Question question) => isar.writeTxnSync(() => isar.questions.putSync(question));
}
