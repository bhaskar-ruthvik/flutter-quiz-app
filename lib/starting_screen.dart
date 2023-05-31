import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  StartScreen(this.startQuiz,{super.key});
  void Function() startQuiz;
  @override
  Widget build(context){
    return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Image(
                  image: AssetImage('assets/images/quiz-logo.png'),
                  color: Color.fromARGB(165, 255, 255, 255),
                  height: 300,
                  ),
              const SizedBox(height: 40),
              const Text(
                'Learn Flutter the fun way!',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(height: 20),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(foregroundColor: Color.fromARGB(255, 78, 212, 236),),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Start Quiz',),
              ),
            ],
          ),
        );
  }
}