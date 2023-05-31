import 'package:flutter/material.dart';
import 'package:quiz_app/starting_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
     return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  List<String> answeredQuestions = []; 
  List<bool> result = [];
  int noCorrect = 0;
  var activeScreen = 'start-screen';
  void setActiveHome(){
    setState(() {
      activeScreen= 'questions-screen';
    });
  }  
void chooseAnswer(String answer){
  answeredQuestions.add(answer);
  result.add(questions[answeredQuestions.length-1].answers[0]==answer);
  if(answeredQuestions.length == questions.length){
     setState(() {
    activeScreen = 'results-screen';
  });
    answeredQuestions = [];
    
  }    
}
  
  @override
  Widget build(context){
    Widget activeHome = StartScreen(setActiveHome);
    if(activeScreen == 'questions-screen'){
      activeHome = QuestionsScreen(chooseAnswer);
    }
    else if(activeScreen == 'results-screen'){
      activeHome = ResultsScreen(result);
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body:activeHome,
      ),
    );
  }
}