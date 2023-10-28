part of 'ui.dart';

class QuestionsPage extends ReactiveStatelessWidget {
  static const path = 'questions';
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final QuestionsBloc questionsBloc = ref.watch(questionsBlocProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: 'Questions'.text(),
        actions: const [
          QuestionsAmountCard(),
        ],
      ),
      body: const QuestionsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          QuestionsBloc.to.addQuestion(Question());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class QuestionsList extends ReactiveStatelessWidget {
  const QuestionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final QuestionsState questionsState = QuestionsBloc.to.questionsState;
    return ListView.builder(
      itemCount: questionsState.questions.length,
      itemBuilder: (context, index) {
        final question = questionsState.questions[index];
        if (index == 0) {
          return switch (questionsState.questionsStatus) {
            QuestionsStatus.loading => const CircularProgressIndicator().pad(),
            QuestionsStatus.resting => const CircleAvatar(),
            QuestionsStatus.error => ErrorWidget('exception'),
          };
        }
        return ListTile(
          title: question.text(),
        );
      },
    );
  }
}

class QuestionsAmountCard extends ReactiveStatelessWidget {
  const QuestionsAmountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: QuestionsBloc.to.questionsState.questions.length.text().pad(),
    );
  }
}

class CreateQuizCard extends ReactiveStatelessWidget {
  const CreateQuizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: 'Create'.text(),
    );
  }
}
