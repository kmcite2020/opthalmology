import '../questions/bloc.dart';

enum Chapter {
  orbit("Orbit & Oculoplasty"),
  catarct("Cataracts"),
  refraction("Refractive Surgery"),
  cornea("Cornea"),
  glaucoma("Glaucoma"),
  uveitis("Uveitis"),
  retina("Retina"),
  neurology("Neuropthalmology"),
  peds("Pediatrics Opthalmology");

  const Chapter(this.name);
  final String name;
  String get numberOfQuestions => questionBloc.numberOfQuestionsByChapter(Chapter.values[index]).toString();
}
