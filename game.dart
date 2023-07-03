import 'dart:io';
import 'dart:math';
void main(){
  Hangman().game();
}
class Hangman{
  late int guess;
  int Life=5;
  late int remaining;
  bool correct=true;
  List<String> Words=['game','hangman','ice','blade','hexadecimal','dart','flutter','cricket','football','institute','driver'];
  String choose(){
    String word= Words[Random().nextInt(Words.length)];
    return word;
  }




bool check(List<String> a, List<String>b){
  if(a==b){
    return true;
  }
  else{
    return false;
  }
}
  void game(){
    bool won=false;
   String wordz=choose();
   List<String> word=wordz.split('');
   List<String> list1 = wordz.split('');
   for(int i=0;i<list1.length;i++){
    list1[i]='-';
   }
   int Life=5;
   
   guess=word.length;
   while(Life>0 && guess>=1){
    print('HANGMAN GAME');

    print('Remaining Attemptz : $Life');

    print('Guess The Word \n\n');
    print(list1);
    print('enter the Guess');
    String answer=stdin.readLineSync()!;
    int index= word.indexOf(answer);
    if(index<0){
      Life=Life-1;
    }
    else{
      for(int i=0;i<word.length;i++){
        if(word[i]==answer){
          list1[i]=word[i];
          guess=guess-1;
          
        }
      }
      if(guess==0){
        print('Congratulations !!!!\nyou have won');
        won=true;
      }
      else{
        won=false;
      }
    
      list1[index]=word[index];
    }
   }
   if(won==false){
    print('YOU LOST');
   }
   
    }
    
   
  }


