import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget{
  ResultsScreen(this.results,{super.key});
  List<bool> results;

  @override
  Widget build(context){
    int noCorrect = 0;
    int len = results.length;
    
    for(int i=0;i<results.length;i++){
      if(results[i]==true){
        noCorrect++;
      }
    }
    double percent = (noCorrect/len)*100;
    return Container(margin: EdgeInsets.all(30),child: Center(child: Text('You got $noCorrect correct out of $len questions. Therefore, you scored $percent % in the quiz!',style: GoogleFonts.montserrat(color:Colors.white,fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),));
  }
}