import 'dart:math';
import '/models/questionAndAsnwers.dart';

List<QuestionsAndAnswers> qAndA = [
  QuestionsAndAnswers("Which keyword is used to declare a variable in Dart that can be reassigned?", "var", ["const", "var", "final", "static"]),
  QuestionsAndAnswers("Which of the following is the correct way to print text in Dart?", 'print("Hello");', ['print("Hello");', 'echo("Hello");', 'Console.Write("Hello");', 'printf("Hello");']),
  QuestionsAndAnswers("What is the data type of 25?", "int", ["String", "double", "int", "bool"]),
  QuestionsAndAnswers("Which data type is used to store text?", "String", ["int", "String", "double", "bool"]),
  QuestionsAndAnswers("What will this code display?\nvar x = 10;\nvar y = 5;\nprint(x + y);", "15", ["5", "10", "15", "50"]),
  QuestionsAndAnswers("Which operator is used for multiplication in Dart?", "*", ["x", "*", "%", "#"]),
  QuestionsAndAnswers("What is the result of 10 % 3?", "1", ["0", "1", "3", "3.33"]),
  QuestionsAndAnswers("Which keyword is used to create a constant value known at compile time?", "const", ["var", "let", "const", "constant"]),
  QuestionsAndAnswers("Which keyword creates a variable that can only be assigned once?", "final", ["final", "var", "dynamic", "static"]),
  QuestionsAndAnswers("Which is the correct Dart if statement?", "if (x >10) {}", ["if x > 10 {}", "if (x >10) {}", "if x >10 then {}", "if [x > 10] {}"]),
  QuestionsAndAnswers("Which keyword is used when checking multiple conditions?", "switch", ["repeat", "switch", "check", "select"]),
  QuestionsAndAnswers("What will this code print?\nfor (int i = 0; i < 3; i++){print(i);}", "0 1 2", ["1 2 3", "0 1 2", "0 1 2 3", "3 2 1"]),
  QuestionsAndAnswers("Which symbol is used to compare if two values are equal?", "==", ["=", "==", "===", "!="]),
  QuestionsAndAnswers("What does the != operator mean?", "Not equal to", ["Equal to", "Greater than", "Not equal to", "Less than"]),
  QuestionsAndAnswers("Which is the correct way to create a list in Dart?", "List numbers = [1, 2, 3];", ["List numbers = {1, 2, 3};", "List numbers = [1, 2, 3];", "List numbers = (1, 2, 3);", "List numbers = <1, 2, 3>;"]),
  QuestionsAndAnswers("What is the index of the first element in a Dart list?", "15", ["0", "1", "-1", "2"]),
  QuestionsAndAnswers("What will this code print?\nvar names = ['John', 'Mark', 'Anna'];\nprint(names[1]);", "Mark", ["John", "Mark", "Anna", "1"]),
  QuestionsAndAnswers("Which keyword is used to define a function that returns no value?", "void", ["null", "void", "empty", "none"]),
  QuestionsAndAnswers("Which is the correct function declaration?", "void add(){}", ["function add(){}", "def add(){}", "void add(){}", "func add(){}"]),
  QuestionsAndAnswers("What will this code output?\nString name = 'Dart';\nprint('Hello \$name');", "Hello Dart", ["Hello name", "Hello \$name", "Hello Dart", "Dart Hello"]),

];

Random random = new Random();
int randomQuestion = random.nextInt(qAndA.length);