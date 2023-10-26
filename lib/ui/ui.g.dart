// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QuizCWProxy {
  Quiz title(String title);

  Quiz author(String author);

  Quiz duration(Duration duration);

  Quiz difficultyLevel(String difficultyLevel);

  Quiz chapter(String chapter);

  Quiz instructions(String instructions);

  Quiz metadata(Map<String, dynamic> metadata);

  Quiz userScores(List<UserScore> userScores);

  Quiz randomizeQuestions(bool randomizeQuestions);

  Quiz isPublic(bool isPublic);

  Quiz accessCode(String accessCode);

  Quiz dateCreated(DateTime dateCreated);

  Quiz lastModified(DateTime lastModified);

  Quiz questions(List<Question> questions);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Quiz(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Quiz(...).copyWith(id: 12, name: "My name")
  /// ````
  Quiz call({
    String? title,
    String? author,
    Duration? duration,
    String? difficultyLevel,
    String? chapter,
    String? instructions,
    Map<String, dynamic>? metadata,
    List<UserScore>? userScores,
    bool? randomizeQuestions,
    bool? isPublic,
    String? accessCode,
    DateTime? dateCreated,
    DateTime? lastModified,
    List<Question>? questions,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQuiz.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQuiz.copyWith.fieldName(...)`
class _$QuizCWProxyImpl implements _$QuizCWProxy {
  const _$QuizCWProxyImpl(this._value);

  final Quiz _value;

  @override
  Quiz title(String title) => this(title: title);

  @override
  Quiz author(String author) => this(author: author);

  @override
  Quiz duration(Duration duration) => this(duration: duration);

  @override
  Quiz difficultyLevel(String difficultyLevel) =>
      this(difficultyLevel: difficultyLevel);

  @override
  Quiz chapter(String chapter) => this(chapter: chapter);

  @override
  Quiz instructions(String instructions) => this(instructions: instructions);

  @override
  Quiz metadata(Map<String, dynamic> metadata) => this(metadata: metadata);

  @override
  Quiz userScores(List<UserScore> userScores) => this(userScores: userScores);

  @override
  Quiz randomizeQuestions(bool randomizeQuestions) =>
      this(randomizeQuestions: randomizeQuestions);

  @override
  Quiz isPublic(bool isPublic) => this(isPublic: isPublic);

  @override
  Quiz accessCode(String accessCode) => this(accessCode: accessCode);

  @override
  Quiz dateCreated(DateTime dateCreated) => this(dateCreated: dateCreated);

  @override
  Quiz lastModified(DateTime lastModified) => this(lastModified: lastModified);

  @override
  Quiz questions(List<Question> questions) => this(questions: questions);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Quiz(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Quiz(...).copyWith(id: 12, name: "My name")
  /// ````
  Quiz call({
    Object? title = const $CopyWithPlaceholder(),
    Object? author = const $CopyWithPlaceholder(),
    Object? duration = const $CopyWithPlaceholder(),
    Object? difficultyLevel = const $CopyWithPlaceholder(),
    Object? chapter = const $CopyWithPlaceholder(),
    Object? instructions = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? userScores = const $CopyWithPlaceholder(),
    Object? randomizeQuestions = const $CopyWithPlaceholder(),
    Object? isPublic = const $CopyWithPlaceholder(),
    Object? accessCode = const $CopyWithPlaceholder(),
    Object? dateCreated = const $CopyWithPlaceholder(),
    Object? lastModified = const $CopyWithPlaceholder(),
    Object? questions = const $CopyWithPlaceholder(),
  }) {
    return Quiz(
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      author: author == const $CopyWithPlaceholder() || author == null
          ? _value.author
          // ignore: cast_nullable_to_non_nullable
          : author as String,
      duration: duration == const $CopyWithPlaceholder() || duration == null
          ? _value.duration
          // ignore: cast_nullable_to_non_nullable
          : duration as Duration,
      difficultyLevel: difficultyLevel == const $CopyWithPlaceholder() ||
              difficultyLevel == null
          ? _value.difficultyLevel
          // ignore: cast_nullable_to_non_nullable
          : difficultyLevel as String,
      chapter: chapter == const $CopyWithPlaceholder() || chapter == null
          ? _value.chapter
          // ignore: cast_nullable_to_non_nullable
          : chapter as String,
      instructions:
          instructions == const $CopyWithPlaceholder() || instructions == null
              ? _value.instructions
              // ignore: cast_nullable_to_non_nullable
              : instructions as String,
      metadata: metadata == const $CopyWithPlaceholder() || metadata == null
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Map<String, dynamic>,
      userScores:
          userScores == const $CopyWithPlaceholder() || userScores == null
              ? _value.userScores
              // ignore: cast_nullable_to_non_nullable
              : userScores as List<UserScore>,
      randomizeQuestions: randomizeQuestions == const $CopyWithPlaceholder() ||
              randomizeQuestions == null
          ? _value.randomizeQuestions
          // ignore: cast_nullable_to_non_nullable
          : randomizeQuestions as bool,
      isPublic: isPublic == const $CopyWithPlaceholder() || isPublic == null
          ? _value.isPublic
          // ignore: cast_nullable_to_non_nullable
          : isPublic as bool,
      accessCode:
          accessCode == const $CopyWithPlaceholder() || accessCode == null
              ? _value.accessCode
              // ignore: cast_nullable_to_non_nullable
              : accessCode as String,
      dateCreated:
          dateCreated == const $CopyWithPlaceholder() || dateCreated == null
              ? _value.dateCreated
              // ignore: cast_nullable_to_non_nullable
              : dateCreated as DateTime,
      lastModified:
          lastModified == const $CopyWithPlaceholder() || lastModified == null
              ? _value.lastModified
              // ignore: cast_nullable_to_non_nullable
              : lastModified as DateTime,
      questions: questions == const $CopyWithPlaceholder() || questions == null
          ? _value.questions
          // ignore: cast_nullable_to_non_nullable
          : questions as List<Question>,
    );
  }
}

extension $QuizCopyWith on Quiz {
  /// Returns a callable class that can be used as follows: `instanceOfQuiz.copyWith(...)` or like so:`instanceOfQuiz.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QuizCWProxy get copyWith => _$QuizCWProxyImpl(this);
}

abstract class _$UserScoreCWProxy {
  UserScore username(String username);

  UserScore score(int score);

  UserScore timestamp(DateTime timestamp);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserScore(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserScore(...).copyWith(id: 12, name: "My name")
  /// ````
  UserScore call({
    String? username,
    int? score,
    DateTime? timestamp,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserScore.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserScore.copyWith.fieldName(...)`
class _$UserScoreCWProxyImpl implements _$UserScoreCWProxy {
  const _$UserScoreCWProxyImpl(this._value);

  final UserScore _value;

  @override
  UserScore username(String username) => this(username: username);

  @override
  UserScore score(int score) => this(score: score);

  @override
  UserScore timestamp(DateTime timestamp) => this(timestamp: timestamp);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserScore(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserScore(...).copyWith(id: 12, name: "My name")
  /// ````
  UserScore call({
    Object? username = const $CopyWithPlaceholder(),
    Object? score = const $CopyWithPlaceholder(),
    Object? timestamp = const $CopyWithPlaceholder(),
  }) {
    return UserScore(
      username: username == const $CopyWithPlaceholder() || username == null
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      score: score == const $CopyWithPlaceholder() || score == null
          ? _value.score
          // ignore: cast_nullable_to_non_nullable
          : score as int,
      timestamp: timestamp == const $CopyWithPlaceholder() || timestamp == null
          ? _value.timestamp
          // ignore: cast_nullable_to_non_nullable
          : timestamp as DateTime,
    );
  }
}

extension $UserScoreCopyWith on UserScore {
  /// Returns a callable class that can be used as follows: `instanceOfUserScore.copyWith(...)` or like so:`instanceOfUserScore.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserScoreCWProxy get copyWith => _$UserScoreCWProxyImpl(this);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'83a11c62187789a1883c6e5ddbae5952a672978a';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
