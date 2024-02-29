import 'package:flutter/material.dart';
import 'package:quizapp/questionlist.dart';

class Ques extends StatefulWidget {
  const Ques({Key? key}) : super(key: key);

  @override
  State<Ques> createState() => _QuesState();
}


class _QuesState extends State<Ques> {
  List question=[
    Quiz(ques:'car have 4 wheels',ans:true),
    Quiz(ques: 'diya is good girl',ans: true),
    Quiz(ques:'bike has 3 wheels',ans:false),
    Quiz(ques:'sky color is green',ans:false),
    Quiz(ques:'In kerala, there are 14 district',ans:true),
    Quiz(ques:'cat has 2 legs',ans:false),
    Quiz(ques:'human can fly',ans:false),
    Quiz(ques:'mannummel boys is a flop film',ans:false),
    Quiz(ques:'devagiri college located in kozhikode',ans:true),
    Quiz(ques:'birds can fly',ans:true),
  ];
  int question_no=0;
  String result='';
  void nextQues(){
    if (question_no<question.length){
      question_no++;
    }
  }
  String getQues(){
    return question[question_no].ques;
  }
  void check(bool answer){
    print(answer);
    if(answer==question[question_no].ans){
      result='correct answer';

    }
    else{
      result='wrong answer';

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Text(question[question_no].ques,
              style: TextStyle(fontSize: 28, color: Colors.white)),
            SizedBox(height: 100,),
            Container(
              height: 50,
              width: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                onPressed: () {setState((){

                  check(true);
                  nextQues();
                });}, child: Text('TRUE'))),
            SizedBox(height: 25,),
            Container(
              height: 50,
              width: 200,
           child: ElevatedButton(
               style: ElevatedButton.styleFrom(primary: Colors.red),
               onPressed: () {setState((){

                 check(false);
                 nextQues();
               });}, child: Text('FALSE'))),
            SizedBox(height: 20,),
            Text(result,style: TextStyle(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
