import 'first_file.dart';

void main() {
  // final person = Person('Anandu2', 22);
  // print(person.name);
  // named constructor
  final person = Person.ageBelow50('Febin', 22);
  print(person.age);
  //print(person._name); //not accesible outside the class since  private
  print(person.getName());
  //function from class call
  person.sayhi();
}
