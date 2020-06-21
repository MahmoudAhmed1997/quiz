import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore ;
  final Function resetHandler;

   Result(this.resultScore,this.resetHandler);

   String get resultPhrase {
     var resultText = "you did it";
     if(resultScore<=8){
       resultText = 'You are awesome and innocent';
     }else if(resultScore<=12){
       resultText = 'Pretty Likeable';
     }else if(resultScore<=16){
       resultText="you are strange!?";
     }else{
       resultText = "you are so bad";
     }
     return resultText;

   }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(resultPhrase,style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
          Text("$resultScore/16"),
          FlatButton(onPressed:resetHandler ,child: Text("Restart Quiz!"),)
        ],
      ),

    );
  }
}
