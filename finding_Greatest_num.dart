import 'dart:io';
void main() {
  stdout.write("Enter a: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter b: ");
  int b = int.parse(stdin.readLineSync()!);
  stdout.write("Enter c: ");
  int c = int.parse(stdin.readLineSync()!);
  if (a > b && a > c) {
    print("$a is the greatest number");
  } else if (b > a && b > c) {
    print("$b is the greatest number");
  } else {
    print("$c is the greatest number");
  }
}
