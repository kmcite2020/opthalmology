// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'models.g.dart';

@Collection()
class Question {
  final String id;
  final String title;
  final String a;
  final String b;
  final String c;
  final String d;
  Question({
    this.id = '',
    this.title = '',
    this.a = '',
    this.b = '',
    this.c = '',
    this.d = '',
  });

  @override
  String toString() {
    return 'Question(id: $id, title: $title, a: $a, b: $b, c: $c, d: $d)';
  }
}
