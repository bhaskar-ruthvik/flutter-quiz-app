import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key,required this.text, required this.onClick});
  final String text;
  final void Function() onClick;
 @override
  Widget build(context){
    return ElevatedButton(
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),backgroundColor: const Color.fromARGB(189, 32, 175, 200),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
              onPressed: onClick,
              child: Text(text,textAlign: TextAlign.center,),
            );
  }
}
