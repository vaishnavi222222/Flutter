import 'dart:io';
void main(){
stdout.write("Enter a:");
int a=int.parse(stdin.readLineSync()!);
stdout.write("Enter b:");
int b=int.parse(stdin.readLineSync()!);
stdout.write('The sum of $a and $b is: ${a+b}');
}
