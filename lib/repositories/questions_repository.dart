part of 'repositories.dart';

@Riverpod()
QuestionsRepository questionsRepository(QuestionsRepositoryRef ref) =>
    QuestionsRepository();

class QuestionsRepository {
  Stream<List<Question>> watchQuestions() => isar.questions.where().watch();
  List<Question> questions() => isar.questions.where().findAll();
}
