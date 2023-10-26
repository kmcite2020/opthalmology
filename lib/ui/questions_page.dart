part of 'ui.dart';

class QuestionsPage extends ConsumerWidget {
  static const path = 'questions';
  const QuestionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

class QuestionsList extends ConsumerWidget {
  const QuestionsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final QuestionsBlocState questionsBlocState = ref.watch(questionsBlocProvider);
    return ListView.builder(
      itemCount: questionsBlocState.questions.length,
      itemBuilder: (context, index) {
        final question = questionsBlocState.questions[index];
        if (index == 0) return const CreateQuizCard().pad();
        return ListTile(title: question.text());
      },
    );
  }
}

class QuestionsAmountCard extends ConsumerWidget {
  const QuestionsAmountCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ref.watch(questionsRepositoryProvider).questions().length.text().pad(),
    );
  }
}

class CreateQuizCard extends ConsumerWidget {
  const CreateQuizCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {},
      child: 'Create'.text(),
    );
  }
}
