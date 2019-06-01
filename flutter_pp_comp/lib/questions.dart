class Question {
  String theQuestion;
  String theAnswer;
  List<String> allAnswers;

  Question(String _theAnswer, String _theQuestion, List<String> _allAnswers) {
    this.theAnswer = _theAnswer;
    this.theQuestion = _theQuestion;
    this.allAnswers = _allAnswers;
  }
  List<String> getTheList() {
    this.allAnswers.shuffle();
    return this.allAnswers;
  }

  bool isCorrect(String userInput) {
    return userInput == this.theAnswer;
  }
}

class ListQuestion {
  List<Question> easyquestions = [];
  List<Question> mediumquestions = [];
  List<Question> hardquestions = [];

  ListQuestion();

  void addQuestion(
      String question, String answer, List<String> listanswers, String mode) {
    Question toAdd = new Question(answer, question, listanswers);
    if (mode == "Easy") {
      easyquestions.add(toAdd);
    }
    if (mode == "Medium") {
      mediumquestions.add(toAdd);
    }
    if (mode == "Hard") {
      hardquestions.add(toAdd);
    }
  }

  List<Question> getListQuestions(String mode) {
    if (mode == "Easy") {
      easyquestions.shuffle();
      return easyquestions.sublist(0, 5);
    }
    if (mode == "Medium") {
      mediumquestions.shuffle();
      return mediumquestions.sublist(0, 5);
    }
    if (mode == "Hard") {
      hardquestions.shuffle();
      return hardquestions.sublist(0, 5);
    }
    return [];
  }
}
