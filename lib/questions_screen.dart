import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/answer_button.dart';
class QuestionsScreen extends StatefulWidget {
  QuestionsScreen(this.answerQuestion,{super.key});
  void Function(String ans) answerQuestion; 
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;
  void onTap(String ans){
    setState(() {
      if(questionIndex<6){
        questionIndex++;
        widget.answerQuestion(ans);
      }
    });
  }

  @override
  Widget build(context) {
    var question = questions[questionIndex];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                question.text,
                style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...question.getShuffled().map((e) => AnswerButton(text: e, onClick:(){
                onTap(e);
              }))
            ],
          ),
        ),
      ),
    );
  }
}
