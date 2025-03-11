import 'dart:io';
void main(){
stdout.write("Enter a:");
int a=int.parse(stdin.readLineSync()!);
stdout.write("Enter b:");
int b=int.parse(stdin.readLineSync()!);
print('The sum of $a and $b is:${sum(a,b)}');
print('The difference of $a and $b is:${diff(a,b)}');
print('The division of $a and $b is:${div2(a,b)}');
print('The integer division of $a and $b is:${div(a,b )}');
print('The product of $a and $b is:${mul(a,b)}');
}
sum(int a, int b)=>(a+b);
int diff(int a, int b)=>(a-b);
int div(int a, int b)=>(a~/b);
int mul(int a, int b)=> (a*b);
double div2(int a, int b)=> (a/b);
