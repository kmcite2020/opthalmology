import 'package:opthalmology/features/chapters/chapters_enum.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

abstract class TestInterface {
  late Chapter chapter;
}

final TestInterface testInterface = TestRepository();

class TestRepository implements TestInterface {
  late final chapterRM = RM.inject<Chapter>(() => throw UnimplementedError());
  @override
  late Chapter chapter = chapterRM.state;
}
