class QuizQuestion {
  QuizQuestion(this.text,this.answers);
  
  final String text;
  final List<String> answers;

  List<String> getShuffled(){
    var shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;

  }
}