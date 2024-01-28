import 'dart:io';
import 'dart:math';

void main() {
  String login;
  String parol;
  String confirimParol;
  String login1;
  String parol1;

  int error = 0;
  int maxError = 2;

  print('PLEASE REGISTR FROM APP\n----Enter login----');
  login = stdin.readLineSync()!;
  print('----Enter parol----');
  parol = stdin.readLineSync()!;
  print('----confirimParol----');
  confirimParol = stdin.readLineSync()!;

  while (parol != confirimParol) {
    print('Parol is not the same with confirimparol... PLEASE REGIST AGAIN!!!!\n----Enter parol----');
    parol = stdin.readLineSync()!;
    print('----confirimParol----');
    confirimParol = stdin.readLineSync()!;
  }
  print('-------Registration is sucsess------\n----Enter login----');
  login1 = stdin.readLineSync()!;
  print('----Enter parol----');
  parol1 = stdin.readLineSync()!;

  while (login != login1 || parol != parol1) {
    error++;
    print('------ LOGIN or PASSWORD is WRONG -------\nplease enter again login and parol !!!\n----Enter login----');
    login1 = stdin.readLineSync()!;
    print('----Enter parol----');
    parol1 = stdin.readLineSync()!;

    if (error>=maxError){
         print('System is blocked. Too many incorrect attempts.');
      return;
    }
  }
  print('------Success entered to APP--------'); 
  
    
}