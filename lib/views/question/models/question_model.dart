class QuestionModel {
  final String question;
  final int questionNumber;
  final String imagePath;
  final List<String> answers;
  final String correctAnswer;
  final int questionScore;
  int selecedAnsewr;
  bool isCorrect;

  QuestionModel(
      {required this.question,
      required this.questionScore,
      this.selecedAnsewr = -1,
      required this.questionNumber,
      required this.imagePath,
      required this.answers,
      required this.correctAnswer,
      this.isCorrect = false});
}
