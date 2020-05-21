import 'package:flutter/material.dart';
import 'package:Quizzler/question.dart';

class QuestionBank{
  int _questionNum=0;
  List <Question> _allQuestions=[
    Question(ques:'You only use 10% of your brain',ans:false),
    Question(ques:'The Royal Family aren\'t allowed to play Monopoly',ans:false),
    Question(ques:'In your lifetime, you\'ll produce enough saliva to fill two swimming pools.',ans:true),
    Question(ques:'A child could swim through the veins of a blue whale',ans:true),
    Question(ques:'It\'s possible to hear a lion\'s roar from 5 miles away',ans:true),
    Question(ques:'Lightning never strikes the same place more than once',ans:false),
    Question(ques:'The youngest person to climb Everest was 10 years old',ans:false),
    Question(ques:'It\'s illegal to kill a fly in the Houses of Parliament',ans:false),
    Question(ques:'In South Korea, you can only be a masseuse if you\'re blind or partially sighted',ans:true),
    Question(ques:'Buzz Aldrin was the first person to urinate on moon',ans:true)
    ];

String getQuestion(){
return _allQuestions[_questionNum].question;
}

bool getAnswer(){
  return _allQuestions[_questionNum].answer;
}

void questionsOver(){
  if(_questionNum < _allQuestions.length-1){
    _questionNum++;
  }
  
}
}

