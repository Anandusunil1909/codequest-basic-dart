//import 'dart:io';

//void main() {
//print statement
//print('hello how are you?');

//*********************************************** */
//input,output statement
// print("What is your name?");
// var a = stdin.readLineSync();
// stdout.write(a);
// print('Hello $a!');

//*********************************************** */
//datatypes
//  int a = 5;
//  print('a=$a');

//  double b = 2.5;
//  print('b=$b');

//  num d=3.5;
//  print('d=$d');

//  var c;
//  c = a + b;
//  print('sum=$c');
//  print('sum=${a + b}');

// String name = "Anandu";
// print('hello $name');

// String address = ''' Amal jyothi College of engineering,
// kanjirapally,
// kottayam''';

// print(address);

// print(address.length);

//************************************************************ */
//control statements
//if
// var year = 2013;
// if (year >= 2001) {
//   print('21st century');
// } else if (year >= 1901) {
//   print('20th century');
// }else{
//   print('else case');
// }

//loop_for
// for (var i = 0; i < 10; i++) {
//   print(i);
// }

// //loop_while
// var i = 0;
// while (i < 10) {
//   print(i);
//   i++;
// }

//********************************************************************8888 */
//list
// int i = 0;
// List<int> numblist = [12, 36, 14, 12];
// for (i in numblist) {
//   print(i);
// }

// var numblist2 = [1 ,2, 12, 'hello'];
// numblist2.add(14);
// numblist2.removeAt(0);
// numblist2.remove(2);
// print(numblist2.length);
// print(numblist2);

//Nested list
// List<List<int>> list2 = [
//   [1, 2, 3],
//   [4, 5, 6]
// ];
// print(list2);
// print(list2[0][1]);

//*************************************************************
//Set-no duplicate elements
// Set<int> list3 = {1, 2, 3, 4, 4, 4, 5};
// print(list3);

//********************************************************* */
//map
// Map<String, int> map = {'Ram': 90, 'Arjun': 50, 'Riya': 75};
// print(map);
// print(map['Ram']);

//********************************************************** */
//Function
// var result = fibonacci(20);
// print(result);

//sumreq( 2,  3);

//required parameter and optional parameter
//  sumop(a: 1, b: 2, c: 4);

//passing fuction inside a function
//sumfun(12, 15,sumreq );

//anonymous function
// sumano(15, 18, (int f, int h) {
//   print('sum=${f + h}');
// });

//future function
// sumFuture(3, 2);
// print('after future');

//********************************************* */
//final and const
//final once assigned cannot be changes
//final has both run time and compile time
//list can be modified even if final is given
//  final String name;
//  name = 'some name';
// name='other name';

//const-from compile it will be constant, but constant at run time
//const String name='hello';

//******************************************************** */
//}

//function
// int fibonacci(int n) {
//   if (n == 0 || n == 1) return n;
//   return fibonacci(n - 1) + fibonacci(n - 2);
// }

//  sumreq(int a, int b) {
//   print('sumreq=${a + b}');
// }

//if c=0 given default parameter
//if not int ,var given  '?' not required as var alredy have null
//if null check given can be added to sum c
// void sumop({required int a, required int b, var c}) {
//   if (c == null) {
//     c = 0;
//   }
//   print('sumop=${a + b + c}');
//   print(c);
// }

//passing fuction inside a function
// void sumfun(int a, int b, void Function(int, int) newfunction) {
//   print('sumfun=${a + b}');
//   newfunction(a, b);
// }

//anonymous function
// void sumano(int a, int b, void Function(int, int) newfunction) {
//   newfunction(a, b);
// }

//future function
// Future<int> sumFuture(int a, int b) async {
//   await Future.delayed(Duration(seconds: 3));
//   print('In sum future');
//   return a + b;
// }

// Future<void> sum() async {
//   await sumFuture(33, 44);
//   print('In just sum');
//}

//******************************************************************** */
//class-blueprint of a object,user defined data type,it has data members and member functions
//null safety in name
//final case
//constructor is used to initialize objects
//object is an instance of a class
//public , private variables (underscore private), can be acessed even if private
class Person {
  // String? name;
  // int age = 25;
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  final String _name;
  final int age;

  Person(this._name, this.age);

  // named constructor
  Person.ageBelow50(this._name, this.age) {
    print(_name);
  }
  Person.ageabove50(this._name, this.age);

  //function inside class
  void sayhi() {
    print('hai');
  }

  //acessing private variable in another dart file
  String getName() {
    return _name;
  }
}

void main() {
  // final person = Person('Anandu2', 22);
  // print(person.name);
  // print(person.age);
  // named constructor
  final person = Person.ageBelow50('Febin', 22);
  print(person.age);
  print(person._name); //accesible outside the class even though private
  //function from class call
  person.sayhi();
}
