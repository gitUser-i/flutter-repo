import 'package:demo/question_bank.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


Questionbank qb = Questionbank();

void main() => runApp(Quizz());

class Quizz extends StatelessWidget {
  const Quizz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: QuizPage(),
        ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

List<Icon> scorekeeper = [

];
// List<String> questions = [
//   'You can lead a cow down stairs but not up stairs',
//   'Approx one quarter of human bones are in the feet',
//   'A slug\'s blood is green'
// ];

// Question q1 = Question(q: 'You can lead a cow down stairs but not up stairs', ans: false);

// List<bool> answers = [
//   false, true, true
// ];

// void isFinished(){
  
//   int questionListLength = qb.getQuestionBankListLength();
//   int currentQuestNumber =  qb.currentQuestionNumber();

//   if(currentQuestNumber == questionListLength-1){
//     Alert(context: context, title: "Finished!", desc: "You've reached the quiz end").show();
//   }else{

//   }
// }

void answerCheck(bool userPickedAnswer){
  bool answerList = qb.accessQuestionAnswerList();

  if(userPickedAnswer== answerList){
    scorekeeper.add(Icon(Icons.check, color: Colors.green,));
  }
  else{
    scorekeeper.add(Icon(Icons.close, color: Colors.red,));
  }
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center( 
                child: 
                Text(qb.accessQuestionTextList(), textAlign: TextAlign.center ,style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
             ),
          ),
        ),

        Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
              child: Text('True', style: TextStyle(color: Colors.white70, fontSize: 20.0),
              ),
              onPressed: (){
                setState(() {
                  if(qb.isFinished()){
                    Alert(context: context, title: "Finished!", desc: "You've reached the end of the quiz.").show();
                  }else{
                    answerCheck(true);
                    qb.nextQuestion();
                  }
                });
              }, 
              ),
            ),
        ),
        
         Expanded(
             child: Padding(
               padding: EdgeInsets.all(10.0),
               child: TextButton(
                       style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
                       ),
                       child: Text('False', style: TextStyle(color: Colors.white70, fontSize: 20.0),
                       ),
                       onPressed: (){
                       setState(() {
                        if(qb.isFinished()){
                          Alert(context: context, title: "Finished!", desc: "You've reached the end of the quiz.").show();
                        }else{
                          answerCheck(false);
                          qb.nextQuestion();
                        }
                       
                       });
                       }, 
                       ),
             ),

         ),
          Row(
            children: [...scorekeeper],
          )


      ],
    );
  }
}

