part of 'ui.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: 'Home'.text(),
        actions: [
          IconButton.filled(
            onPressed: () {
              context.push('/${ConfigurationPage.path}');
            },
            icon: const Icon(
              Icons.settings,
            ),
          )
        ],
      ),
      body: ElevatedButton(
        onPressed: () {
          ref.watch(goRouterProvider).goNamed('questions');
        },
        child: 'Questions'.text(),
      ).center(),
    );
  }
}
