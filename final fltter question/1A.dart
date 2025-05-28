void main() {
 // Variables
 String name = "John";
 int age = 30;
 double height = 1.75;
 bool isStudent = false;
 // Control flow
 if (age >= 18) {
 print("$name is an adult.");
 } else {
 print("$name is a minor.");
 }
 // Loops
 for (int i = 0; i < 5; i++) {
 print("Count: $i");
 }
 // Functions
 String greet(String person) {
 return "Hello, $person!";
 }
 // Lists
 List<String> fruits = ["apple", "banana", "orange"];
 fruits.forEach((fruit) => print(fruit));
 // Output
 print(greet(name));
 print("Age: $age, Height: $height meters, Student: $isStudent");
}
OUTPUT