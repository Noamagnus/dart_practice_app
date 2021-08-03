///Named constructor

// class Student {
//   double gpa;
//   String university;
//   bool isFailing;
//
//   /// Default constructor
//   Student({this.gpa, this.isFailing, this.university});
//
//   /// Named constructor
//   Student.positional(this.gpa, this.isFailing, this.university);
// }

// void main() {
//   final stud = Student(gpa: 12, isFailing: false, university: 'Harvard');
//   print(stud.gpa);
// }

// class Person with Driver {
//   void sayHalo() {
//     print('Hallo');
//   }
//
//   void eat() {
//     print('I\'ll eat something cool');
//   }
// }
//
///Extends means we're taking all the code from the Person class
///and add some additional properties and methods
///Here we can use with keyword when extending
// class Student extends Person with Driver {
//   void study() {
//     print('I\'m studying whole day');
//   }
// }
//
/// Implement means that class takes all the properties and methods from Person but must override them
/// We can implement Driver mixin as long as we override methods from
/// mixin's
//
// class Rebel implements Person, Driver {
//   @override
//   void eat() {
//     print('Bring me food wife!!');
//   }
//
//   @override
//   void sayHalo() {
//     print('Don\'t tell me what to do!!');
//   }
//
//   @override
//   void drive() {
//     print('Driving faaaast!!!');
//   }
// }
//
// mixin Driver {
//   void drive() {
//     print('Driving');
//   }
// }
//
// void main() {
//   Person person = Person();
//   Student student = Student();
//   Rebel rebel = Rebel();
//   student.drive();
//   person.drive();
//   rebel.drive();
// }
///Abstract classes

// import 'dart:math' as math;
//
// abstract class Shape {
//   double getArea();
// }
//
// class Rectangle implements Shape {
//   double width;
//   double height;
//
//   Rectangle({this.width, this.height});
//
//   @override
//   double getArea() {
//     print('Getting rectangle area');
//
//     return height * width;
//     throw UnimplementedError();
//   }
// }
//
// class Square extends Rectangle {
//   double side;
//
//   Square(this.side) : super(width: side, height: side);
// }
//
// class Oval implements Shape {
//   final double minorRadius;
//   final double majorRadius;
//
//   Oval({this.minorRadius, this.majorRadius});
//
//   @override
//   double getArea() {
//     print('Getting ovals area');
//     return minorRadius * majorRadius * math.pi;
//     throw UnimplementedError();
//   }
// }
//
// class Circle extends Oval {
//   final double radius;
//
//   Circle(this.radius)
//       : super(
//           minorRadius: radius,
//           majorRadius: radius,
//         );
// }
//
// void main() {
//   /// They are all different types but they all have shapes!
//   ///  They are children or grandchildren of a Shape class
//   Rectangle rectangle = Rectangle(width: 24, height: 23);
//   Square square = Square(4);
//   Oval oval = Oval(majorRadius: 10, minorRadius: 5);
//   Circle circle = Circle(7.5);
//
/// Even though we can instantiate Shape class we can use Shape type
/// for rectangle, square...
/// Polymorphism is using classes children as that object
/// this is example of subtyping
//   List<Shape> shapes = [
//     rectangle,
//     square,
//     oval,
//     circle,
//   ];
//
//   /// Because of polymorphism compiler will now which .getArea() to call
//   /// and it will be different for each element
//   shapes.forEach((element) {
//     element.getArea();
//   });
//
//   /// This is really useful to for writing clean code
//   /// e.g. we have abstract class or layer called database
//   /// class hiveDB implements database or
//   /// class sqlLiteDB  implements database
//   ///
// }

// abstract class Rectangle {
//   double width;
//   double height;
//
//   Rectangle({this.width, this.height});
//
//   double getArea();
// }
//
// class Square extends Rectangle {
//   double side;
//
//   /// super means that we're passing a variable (variable value) it the
//   /// constructor of the parent (super) class, in this case to the
//   /// Rectangle class
//   Square(this.side) : super(width: side, height: side);
//
//   @override
//   double getArea() {
//     return width * height;
//   }
// }
//
// class Cube extends Square {
//   double height;
//   Cube(double side)
//       : height = side,
//         super(side);
// }
// import 'package:flutter/cupertino.dart';

// import 'package:flutter/cupertino.dart';

/// Interface is a abstract class that has all abstract methods
/// and all must be included in class that implements them
/// in this case CompactDisk class
// abstract class RetailPrice {
//   double get price;
//   set price(double price);
// }
//
// abstract class Labeled {
//   String get label;
//   set label(String label);
// }
//
// class CompactDisk implements Labeled, RetailPrice {
//   String label;
//
//   double price;
//   CompactDisk({this.price, this.label});
// }
/// Named constructors
//
// class BankAccount {
//   double balance;
//
//   BankAccount(this.balance);
//   BankAccount.newClient() : balance = 0;
//   BankAccount.newVipClient(double startAmount) : balance = startAmount * 1.2;
//
//   void deposit(double amount) {
//     balance += amount;
//   }
//
//   void withdraw(double amount) {
//     if (balance > amount) {
//       balance -= amount;
//     } else {
//       print('There is not enough money on account');
//     }
//   }
// }
//
// void main() {
//   BankAccount bankAccount = BankAccount(100);
//   BankAccount bankAccount2 = BankAccount.newClient();
//   BankAccount bankAccountVip = BankAccount.newVipClient(12);
//   bankAccount.withdraw(20);
//   print(bankAccount.balance);
//   print(bankAccountVip.balance);
// }
/// The fat arrow notation =>
///anonymous function
///typedef
// void main() {
//   /// Two ways of declaring anonymous function
//   /// This is the same thing, we can write this function in any of
//   /// this two ways
//   var sum = (int num1, int num2) => num1 + num2;
//   int Function(int, int) sum2 = (num1, num2) => num1 + num2;
//
//   print(sum(2, 1));
//   print(sum);
//   print(sum2(3, 4));
// }
/// More on anonymous functions
// void main() {
//   var values = [1, 2, 3, 4, 5, 6, 7, 8];
//   var newValues = <int>[];
//   // void Function(int) multiplyFive = (value) => newValues.add(value * 5);
//   // var multiplyFive = (value) => newValues.add(value * 5);
//   var multiply5 = (int value) => newValues.add(value * 5);
//   var multiply2 = (int value) => newValues.add(value * 5);
//
//   ///
//   listOperation(values, multiply5);
//   listOperation(values, (values) => newValues.add(values * 10));
//   listOperation(values, print);
//
//   ///
//   print(newValues);
// }
//
// void listOperation(List<int> list, void Function(int) action) {
//   for (var item in list) {
//     action(item);
//   }
// }
///Type definition typedef
///We declared her that void Function(int) is of a ActionO type!!!

// typedef ActionO = void Function(int);
// void main() {
//   var values = [1, 2, 3, 4, 5, 6, 7, 8];
//   var newValues = <int>[];
//   var multiply5 = (int value) => newValues.add(value * 5);
//
//   /// We can also define in this way
//   ActionO multiply2 = (int value) => newValues.add(value * 2);
//
//   listOperation(values, multiply2);
//
//   print(newValues);
// }
//
// void listOperation(List<int> list, ActionO action) {
//   for (var item in list) {
//     action(item);
//   }
// }

/// Generic functions means that it can take object of any type
/// String, double or int
/// Doesn't have to be T it can be A or U or whatever letter
// void main() {
//   var doubleValues = <double>[10.2, 2.2, 3, 4.6];
//   var stringValues = <String>['@', '#', '&'];
//
//   var newDoubleValues = <double>[];
//   var newStringValues = <String>[];
//
//   listOperation(doubleValues, (double value) => newDoubleValues.add(value * 5));
//   listOperation(stringValues, (String value) => newStringValues.add(value * 2));
//
//   print(newDoubleValues);
//   print(newStringValues);
// }
//
// void listOperation<T>(List<T> list, void Function(T) action) {
//   for (var item in list) {
//     action(item);
//   }
// }

/// .forEach and .map
// void main() {
//   final list = [30, 20, 80];
//   final stringList = ['a', 'b', 'c', 'd'];
//   for (var item in list) {
//     print(item);
//   }
//
//   /// This is the same as this
//   stringList.forEach((element) => print(element));
//
//   /// or this because print is void Function(Object object) and
//   /// object can be function that accepts integer which we need as an
//   /// input for .forEach function
//
//   list.forEach(print);
//
//   var halves = list.map((element) => element / 2).toList();
//   print(halves);
//
//   /// .map returns lazy iterable which means only when we print it or
//   /// do something with it it will calculate element/2
// }

/// Declaring variables means we're declaring its type and then we can
/// assign values to it

/// Concatenation operator is when adding string to int
/// Literals are words and anything written with letters between ''
/// Escape character is \. We can put it in front of $ or ' as a way
/// around. Also we can put r before whole expression and we'll be fine
/// If we want to add a new line we should write \n

/// Converting between data types in dart
///
// void main() {
//   //converting int to String
//   int nrOfPeople = 5;
//   String nrOfPeopleText = nrOfPeople.toString();
//
//   //converting String to int
//   int nrOfPeopleInt = int.parse(nrOfPeopleText);
//
//   //converting int to double
//
//   double nrOfPeopleDouble = nrOfPeople.toDouble();
//
//   //converting double to int
//
//   double temp = 26.67;
//   int tempIntRound = temp.round();
//   int tempIntCeil = temp.ceil();
//   int tempIntFloor = temp.floor();
//   int tempIntTruncate = temp.truncate();
//   print(tempIntRound);
//   print(tempIntCeil);
//   print(tempIntFloor);
//   print(tempIntTruncate);
//
//
// }
///Exercise
// void main() {
// //Question 1
//
//   /*
//    * Using the variable defined at the bottom, print the following lines to the console
//    *
//    * mcdonald's - best burgers ever!
//    * MCDONALD'S - BEST BURGERS EVER!
//    * Contains the word 'best'? true
//    * McDonald's - best breakfast muffin ever!
//    *
//    */
//   String slogan = 'McDonald\'s - best burgers ever!';
//   print(slogan.toLowerCase());
//   print(slogan.toUpperCase());
//   print(slogan.contains('best'));
//   print(slogan.replaceAll('burgers', 'breakfast muffin'));
//
//   //your coding here
//
//   //Question 2
//
//   /*
//    * Using the variables below, print the following using only the variables
//    *
//    * Next year the child will be 8 years old
//    * Today the temperature outside is 33 degrees celcius
//    */
//
//   String childAge = '7';
//   double tempOutside = 32.768;
//   print('Next year the child will be ${int.parse(childAge) + 1} years old');
//   print(
//       'Today the temperature outside is ${tempOutside.round()} degrees celcius');
//
//   // your coding here
//
//   //Question 3
//
//   /*
//    * The BMI of a person can be calculated by taking the weight(kg) divided by the height(m) squared
//    * Thus someone with a weight of 80kg and is 1.9m tall will have a BMI of 22.16
//    * Use the 2 variables below to calculate the BMI
//    */
//
//   double weight = 80;
//   double height = 1.9;
//   print((weight / (height * height)).toStringAsFixed(2));
//
//   //your coding here
//
//   //Question 4
//
//   /*
//    * Look at the coding below and WRITE DOWN what you think the output will be
//    * You may run the code afterwards to check your answer
//    */
//
//   int a = 5; // a=5
//   // we first assign a to b and then do the -- operation wich means
//   // that a will be equal to 4
//   int b = a--; // b=5, a=4
//   int c = ++b; // b=6, c=6
//   int d = b += 2; // b=8 d=8
//
//   print('a: $a, b: $b, c: $c, d: $d');
// }
/// var,final,const,dynamic

// void main() {
//   ///var
//   ///We can declare new value to intNumber because it is var
//   var intNumber = 10;
//   intNumber = 4;
// // if we assign string value to intNumber it will throw error
// //  intNumber='lkjljk';
//   /// final or runtime constant!!!!
//   /// dart will recognize (infer a type) variable and will initialize it if we don't
//   /// specified that is String but we can add type if we want
//   /// final variables are read only variables
//   final name = 'Misa';
//   final String name2 = 'Joca';
//   // name2='Bole';  dart will complain about it
//   /// We can write this but after this line of code we cant assign
//   /// different value for lastName variable.
//   ///
//   final lastName = getLastName(); // we can write this
//   // const lastName = getLastName();// we can't write this!!!
//
//   /// const keyword makes a variable compile time constant
//   /// which is computed during compile time/ not during run time
//   /// If we run app many times const variable will have same value
//   /// every time but final can change
//   /// const variables must be initialized with a const values
//   const shipName = 'Avatar';
//
//   /// dynamic
//   dynamic age = 10;
//   age = 'Ten';
// }
//
// void getLastName() {}

///Exercise 3
// void main() {
//   //Exercise 3
//
//   //Question 1
//
//   //Use the declared variables below to decide whether or not a person is eligible to rent movies
//   //A person is eligible when the age is more than 20 and the person can show his/her ID
//   //An example printout: Eligible to rent movies? false
//
//   int age = 15;
//   bool id = true;
//   if (age > 20 && id) {
//     print('Eligible to rent movies? true');
//   } else {
//     print('Eligible to rent movies? false');
//   }
//   print('Eligible to rent movies? ${(age > 20 && id) ? true : false}');
//
//   /// or we can do without it
//   print('Eligible to rent movies? ${(age > 20 && id)}');
//   //Question 2
//
//   //Use the variable below and work out the price the customer will pay to enter the Wild Life Park
//   //For a Bike, the driver will pay $10 entry
//   //For a Car, the driver will pay $20 entry
//   //For a Bus, the driver will pay $30 entry
//   //Example printout: You will pay $10 to enter the Wild Life Park
//
//   String type = 'Bus';
//   // if (type == 'Bike') {
//   //   print('You will pay \$10 to enter the Wild Life Park');
//   // } else if (type == 'Car') {
//   //   print('You will pay \$20 to enter the Wild Life Park');
//   // } else if (type == 'Bus') {
//   //   print('You will pay \$30 to enter the Wild Life Park');
//   // }
//   print(
//       'You will pay ${(type == 'Bike') ? 10 : (type == 'Car') ? 20 : 30}\$ to enter the Wild Life Park');
//
//   //Question 3
//
//   //Use the email declared below and test if it is a valid email address
//   //For an email address to be valid, it must contain the @ symbol and a .
//   //Example printout: Valid email address? true
//
//   String email = 'peter@gmail.com';
//   print('Valid email address? ${email.contains('@') && email.contains('.')}');
//
//   //Question 4
//   //Look at the following declarations of variables. You need to change all the String declarations to
//   //const, final or var
//   //try this first on a piece of paper and then check it in coding
//
//   const firstName = 'Peter';
//   const lastName = 'Johnson';
//   var fullName = '$firstName $lastName';
//   final fullNameLength = fullName.length.toString();
//   fullName = 'Peter Pollock';
// }
/// Switch statement

// void main() {
//   const num = 1;
//   // if (num == 1) {
//   //   print('Number is 1');
//   // } else if (num == 1) {
//   //   print('Number is 2');
//   // } else if (num == 2) {
//   //   print('Number is 2');
//   // } else if (num == 3) {
//   //   print('Number is 3');
//   // } else {
//   //   print('Number is not 1 or 2 or 3');
//   // }
//
//   /// This code we can write with a switch statement
//
//   switch (num) {
//     case 1:
//       print('Number is 1');
//       break;
//     case 2:
//       print('Number is 2');
//       break;
//     case 3:
//       print('Number is 3');
//       break;
//     default:
//       print('Number is not 1 or 2 or 3');
//   }
//
//   /// one of the examples where can we use cases
//   /// a - 10Mbps line for 30$
//   /// b - 40Mbps line for 50$
//   /// c - 100Mbps line for 70$
//
//   const choise = 'a';
//
//   switch (choise) {
//     case 'a':
//     case 'A':
//
//       /// it will work with a and A
//       print('10Mbps line for 30\$');
//       break;
//     case 'b':
//     case 'B':
//       print('100Mbps line for 50\$');
//       break;
//     case 'c':
//     case 'C':
//       print('105Mbps line for 60\$');
//       break;
//   }
// }

///Factory constructors
// class Reading {
//   double value;
//   Reading({@required double value}) : this.value = value;
//
//   Reading.zero() : value = -999;
//
//   @override
//   String toString() {
//     return '$value';
//   }
// }
//
// class Temperature extends Reading {
//   String city;
//   Temperature({@required String city, @required double reading})
//       : this.city = city,
//         super(value: reading);
//   Temperature.zero()
//       : city = '',
//         super(value: -999);
//
//   @override
//   String toString() {
//     return 'Temperature reading:\nReading: ${super.toString()}\nCity: $city \n';
//   }
// }
//
// class Pressure extends Reading {
//   String objectTested;
//   Pressure({@required String objectTested, @required double reading})
//       : this.objectTested = objectTested,
//         super(value: reading);
//   Pressure.zero()
//       : objectTested = '',
//         super(value: -999);
//   @override
//   String toString() {
//     return 'Pressure reading:\nReading: ${super.toString()}\nObject Tested: $objectTested \n';
//   }
// }
//
// void main() {
//   var fromServer = [
//     {
//       'type': 'temp',
//       'reading': 20.2,
//       'city': 'Johannesburg',
//     },
//     {
//       'type': 'pressure',
//       'reading': 100.0,
//       'object': 'Gass cilinder',
//     },
//     {
//       'type': 'temp',
//       'reading': 35.2,
//       'city': 'New York',
//     },
//     {
//       'type': 'pressure',
//       'reading': 300.5,
//       'object': 'Tyre',
//     }
//   ];
// }
/// Enums
/// Enums cant be inside of a methods
// enum Day {
//   Monday,
//   Tuesday,
//   Wednesday,
//   Thursday,
//   Friday,
//   Saturday,
//   Sunday,
// }
//
// void main() {
//   // int day = 0;
//   // switch (day) {
//   //   case 0:
//   //     print('This is monday');
//   //     break;
//   //   case 1:
//   //     print('This is Tuesday');
//   //     break;
//   //   case 2:
//   //     print('This is Wednesday');
//   //     break;
//   //   case 3:
//   //     print('This is Thursday');
//   //     break;
//   //   case 4:
//   //     print('This is Friday');
//   //     break;
//   //   case 5:
//   //     print('This is Saturday');
//   //     break;
//   //   case 6:
//   //     print('This is Sunday');
//   //     break;
//   // }
//
//   /// We can also do that which looks more  logical
//   String stringDay = 'Monday';
//   switch (stringDay) {
//     case 'Monday':
//       print('This is monday');
//       break;
//     case 'Tuesday':
//       print('This is Tuesday');
//       break;
//     case 'Wednesday':
//       print('This is Wednesday');
//       break;
//     case 'Thursday':
//       print('This is Thursday');
//       break;
//     case 'Friday':
//       print('This is Friday');
//       break;
//     case 'Saturday':
//       print('This is Saturday');
//       break;
//     case 'Sunday':
//       print('This is Sunday');
//       break;
//   }
//   Day day = Day.Monday;
//   switch (day) {
//     case Day.Monday:
//       print('This is monday');
//       break;
//     case Day.Tuesday:
//       print('This is Tuesday');
//       break;
//     case Day.Wednesday:
//       print('This is Wednesday');
//       break;
//     case Day.Thursday:
//       print('This is Thursday');
//       break;
//     case Day.Friday:
//       print('This is Friday');
//       break;
//     case Day.Saturday:
//       print('This is Saturday');
//       break;
//     case Day.Sunday:
//       print('This is Sunday');
//       break;
//   }
// }

/// Loops
// void main() {
//   /// While loop or pre-test loop, which means we first check and then
//   /// do something. We test first before start looping
//
//   int x = 10;
//   while (x > 1) {
//     x--;
//     print('$x');
//   }
//
//   /// We can write this loop in this way
//   /// but here we first do something and then check
//   /// We call it post-test loop
//   int y = 10;
//   do {
//     y--;
//     print(y);
//   } while (y > 1);
//
//   /// For loop
//
//   for (var i = 1; i < 7; i++) {
//     print(i);
//   }
// }
/// List and looping through list

// void main() {
//   var cars = ['Honda', 'Subaru', 'Mercedes', 'Jugo'];
//
//   for (var i = 0; i < cars.length; i++) {
//     print(cars[i]);
//   }
//   for (var car in cars) {
//     print(car);
//   }
//
//   /// List and const, final and var
//   var list = <String>['misa', 'joca'];
//   List<String> listString = ['misa', 'joca'];
//
//   ///final
//   final listNames = ['Serina', 'Bunny'];
//   // listNames=['joe','moe']; this cat't be done
//   listNames.add('value'); // this is possible
//   print(listNames);
//
//   /// We can change values in list but we cant assign whole new list to
//   /// a list that is final
//   listNames[0] = 'Funny'; // we can do that
//   /// All this above is possible with final but is not possible with const
// }

/// Sets
/// Difference between list and sets is that sets can't have a same value
/// repeated like can
/// Actually it can have duplicate but they want be printed or taken into
/// account

// void main() {
//   var euLanguage = {'Serbian', 'Croatian', 'Crnski', 'French'};
//
//   /// Fetching values from sets
//   // print(euLanguage.elementAt(0));
//
//   var afLanguages = {'Zule', 'Swahili', 'French'};
//
//   print(
//       euLanguage.union(afLanguages)); // print every value but French only ones
//   print(euLanguage.intersection(afLanguages)); // print French
//   print(euLanguage.difference(afLanguages));
// }
/// Maps
///
// void main() {
//   var user = {
//     'username': 'Milos',
//     'password': 'NoaMagnus',
//     'role': 'admin',
//     'staffNr': 98222,
//   };
//   Map<String, dynamic> user2 = {};
//
//   ///Getting values from a map
//   print(user['password']);
//
//   ///Setting a new values for a specific key
//   ///This method we also use to add new key-value pair
//
//   user['password'] = '8611';
//   user['loggedIn'] = true;
//   print(user);
//
//   /// Very important
//   // if we want to print a password length
//   // var password=user['password'];
//   // print(password.length);  // this will not work
//   /// If we want password lenght we need to convert it to a string first
//   String password = user['password'];
//   print(password.length); // this will work and will print 4
//   ///Or another thing we can do is add as String at the end
//   ///
//   var password2 = user['password'] as String;
//   print(password2.length); // this will not work
//   print('******************************');
//
//   /// for loop in maps
//   // for (var key in user.keys) {
//   //   print(key);
//   // }
//   // print('____');
//   // for (var value in user.values) {
//   //   print(value);
//   // }
//   for (var entry in user.entries) {
//     print('Key is ${entry.key} and value is ${entry.value}');
//   }
//   print('************');
//   user.forEach((key, value) {
//     print('This map has $key key and $value value');
//   });
// }
/// Exercise 6

// void main() {
//   //Question 1
//   //You are given the following 2 Lists
//   //Use a loop to work out the total sales for the year as well as the highest sale for the year
//   //Also print out the name of the month with the highest sale
//   //example printout:
//   //The total sales for the year is R29390.90
//   //The highest sale is R5533.20 in August
//
//   var salesFigures = [
//     2150.71,
//     2200.50,
//     1500.25,
//     1100.55,
//     3255.55,
//     1223.60,
//     3321.33,
//     5533.20,
//     1202.50,
//     3455.61,
//     2111.20,
//     2335.90
//   ];
//
//   var months = [
//     'January',
//     'February',
//     'March',
//     'April',
//     'May',
//     'June',
//     'July',
//     'August',
//     'September',
//     'October',
//     'November',
//     'December'
//   ];
//   // double sum = 0;
//   // for (var sale in salesFigures) {
//   //   sum += sale;
//   // }
//   // double highestSale = 0;
//   // int highestSaleIndex;
//   // for (var i = 0; i < salesFigures.length; i++) {
//   //   if (salesFigures[i] > highestSale) {
//   //     highestSale = salesFigures[i];
//   //     highestSaleIndex = i;
//   //   }
//   // }
//   // print(sum.toStringAsFixed(2));
//   // print('Highest sale of $highestSale was in ${months[highestSaleIndex]}');
//
//   /// Same problem but with for-in
//   double sum = 0;
//   double maxSale = salesFigures[0];
//   for (var sale in salesFigures) {
//     sum += sale;
//     if (sale > maxSale) {
//       maxSale = sale;
//     }
//   }
//
//   /// Getting index of highest value, we must provide a value that is in the
//   /// list and if there is no value that we put we'll get -1
//   int indexOfMaxSale = salesFigures.indexOf(maxSale);
//   print('Total sale is ${sum.toStringAsFixed(2)} and max sale is $maxSale');
//   print('The highest sale is R$maxSale in ${months[indexOfMaxSale]}');
//
//   //Question 2
//   //Given below are telephone numbers for staff members in 2 departments at a company
//   //You want to send out sms messages to all staff members
//   //Some staff members exist in both departments
//   //Print out a list of telephone numbers making sure that no number will get 2 of the same
//   //sms messages (thus all numbers without any duplicates)
//
//   var deptIT = {
//     '0876765433',
//     '0826548977',
//     '0739087612',
//     '0127769900',
//     '0727784420'
//   };
//   var deptHR = {
//     '0739087612',
//     '0727784420',
//     '0817745555',
//     '0917769987',
//     '0826758977'
//   };
//   print(deptIT.union(deptHR));
//
//   //Question 3
//   //Given the following declarations:
//
//   //Print out using a loop:
//   //Peter has a mark of 40%
//   //Paul has a mark of 76%
//   //James has a mark of 89%
//   //The average of the marks is 68.33%
//
//   var map1 = {
//     'student': 'Peter',
//     'mark': 40,
//   };
//
//   var map2 = {
//     'student': 'Paul',
//     'mark': 76,
//   };
//
//   var map3 = {
//     'student': 'James',
//     'mark': 89,
//   };
//
//   var marks = [map1, map2, map3];
//
//   var sumMarks = 0.0;
//   for (var mark in marks) {
//     sumMarks += mark['mark'];
//     print('${mark['student']} has a mark of ${mark['mark']}%');
//   }
//   print((sumMarks / marks.length).toStringAsFixed(2));
// }

/// Collection if, for,spread and copy
/// Collection if means we can add if statement inside collection and
/// it will automatically add user if if statement is true

// void main() {
//   var adminOther = ['rambo@gmail.com', 'bruceLee@gmail.com'];
//   var moreAdmin = ['atomMan@gmail.com', 'catWoman@gmail.com'];
//   var user = {
//     'userName': 'beba@gmail.com',
//     'admin': true,
//   };
//   var admin = [
//     'joe@gmail.com',
//     'moe@gmail.com',
//     'serina@gmail.com',
//
//     ///Interesting is that we don't need to put {} after if() but we can and
//     ///it will be the same
//     ///This is collection if
//     if (user['admin'] as bool) //although it will work without as bool
//       user['userName'],
//
//     /// This is collection for
//     for (var other in adminOther)
//       other, // it will add all items from adminOther list
//     ///This code below have the same meaning as a code above
//     ...moreAdmin,
//
//     ///Spreads can be written also in another way
//     ...['atomMan@gmail.com', 'catWoman@gmail.com']
//   ];
//   print(admin);
//
//   /// Object [10,20,30,40] is created and collection1 only points at
//   /// that object
//   var collection1 = [10, 20, 30, 40];
//
//   /// This line of code means that we're just pointing at collection1
//   /// That doesn't mean that we've copied collection1
//   ///  We're only copying the pointer collection2 to collection1 and it will
//   ///  pointing at same object in this case [10,20,30,40]
//   var collection2 = collection1; //
//   /// That means that next line of code refferst to [10,20,30,40]
//   collection2[0] = 1;
//   print(collection1);
//   print(collection2);
//
//   /// Finally to copy collection easiest way is
//
//   var collection3 = [10, 20, 30, 40];
//   var collection4 = [...collection3];
//
//   /// This is the same as this code although we're not gonna use this
//   /// approach in practical use
//   // for (var value in collection3) {
//   //   collection4.add(value);
//   // }
//   collection4[0] = 1;
//   print(collection3);
//   print(collection4);
// }
/// Null safety
/// Assigning a nullable value to a non-nullable variable
/// Using the Assertion operator !
/// If null operator ??

// void main() {
//   int age = 70;
//   double price = 1345;
//   int? discount;
//   if (age > 60) {
//     discount = 20;
//   }
//
//   ///This line want work because we want to subtract null with double(non nullable)
//   ///value, but we can fix that if we add Assert operator!
//   ///In this case were making compiler happy but we can get runtime error
//   ///it we because of conditions discount stays null
//   // double finalPrice = price - discount;
//   /// This code will not throw error only if age value is over 60
//
//   double finalPrice = price - discount!;
//   print(finalPrice);
//
//   /// This code could be done with ternary operator
//   /// This code will not throw error if discount2 stays null
//   int age2 = 50;
//   double price2 = 1345;
//   int? discount2;
//   if (age > 60) {
//     discount = 20;
//   }
//   discount2 = discount2 == null ? 0 : discount2;
//   double finalPrice2 = price2 - discount2;
//   print(finalPrice2);
//
//   ///If null operator
//   int age3 = 50;
//   double price3 = 1220;
//   int? discount3;
//   if (age > 60) {
//     discount = 20;
//   }
//
//   /// ?? means if discount3 is null then we'll assign a value of 0 to it
//   /// else it will take old value that is not different than null
//   discount3 = discount3 ?? 0;
//   double finalPrice3 = price3 - discount3;
//   print(finalPrice3);
// }

///Null safety for collections

// void main() {
//   const months = ['January', 'February', 'March', null];
//   for (var month in months) {
//     /// month? will check if month is null and if it is it will only print
//     /// null
//     print(month?.length);
//   }
// }

///Factory constructor
///.. is uset to create instances of subclasses (for example depending on the passed parameter
///

// class Reading {
//   double value;
//   Reading({required this.value});
//
//   Reading.zero() : value = -999;
//
//   @override
//   String toString() {
//     return '$value';
//   }
//
//   factory Reading.fromServer(Map<String, Object> server) {
//     final type = server['type'];
//     final reading = server['reading'];
//     switch (type) {
//       case 'temp':
//         if (type is String && reading is double) {
//           return Temperature(city: server['city'] as String, reading: reading);
//         } else {
//           return Temperature.zero();
//         }
//       case 'pressure':
//         if (type is String && reading is double) {
//           return Pressure(
//               objectTested: server['object'] as String, reading: reading);
//         } else {
//           return Pressure.zero();
//         }
//       default:
//         return Reading.zero();
//     }
//   }
// }
//
// class Temperature extends Reading {
//   String city;
//   Temperature({required this.city, required double reading})
//       : super(value: reading);
//   Temperature.zero()
//       : city = '',
//         super(value: -999);
//
//   @override
//   String toString() {
//     return 'Temperature reading:\nReading: ${super.toString()}\nCity: $city \n';
//   }
// }
//
// class Pressure extends Reading {
//   String objectTested;
//   Pressure({required this.objectTested, required double reading})
//       : super(value: reading);
//   Pressure.zero()
//       : objectTested = '',
//         super(value: -999);
//   @override
//   String toString() {
//     return 'Pressure reading:\nReading: ${super.toString()}\nObject Tested: $objectTested \n';
//   }
// }
//
// void main() {
//   var fromServer = [
//     {
//       'type': 'temp',
//       'reading': 20.2,
//       'city': 'Johannesburg',
//     },
//     {
//       'type': 'pressure',
//       'reading': 100.0,
//       'object': 'Gass cilinder',
//     },
//     {
//       'type': 'temp',
//       'reading': 35.2,
//       'city': 'New York',
//     },
//     {
//       'type': 'pressure',
//       'reading': 300.5,
//       'object': 'Tyre',
//     }
//   ];
//   var newList = <Reading>[];
//   for (var item in fromServer) {
//     newList.add(Reading.fromServer(item));
//   }
//   for (var item in newList) {
//     print(item);
//   }
// }

///Static members and properties of a class
///This refers to variables and methods
///Static member of a class do not belong to an object of a class, this mean
///when we make and instance of BankAccount class (bankAccount) we can't call
///static members on that instance
///
///they belong to a class itself

// class BankAccount {
//   double balance;
//   static int nrOfObjects = 0;
//
//   BankAccount(this.balance) {
//     nrOfObjects++;
//   }
//
//   BankAccount.newClient() : balance = 0 {
//     nrOfObjects++;
//   }
//
//   BankAccount.newVipClient(double startAmount) : balance = startAmount * 1.2 {
//     nrOfObjects++;
//   }
//
//   void deposit(double amount) {
//     balance += amount;
//   }
//
//   void withdraw(double amount) {
//     if (balance > amount) {
//       balance -= amount;
//     } else {
//       print('There is not enough money on account');
//     }
//   }
// }
//
// void main() {
//   BankAccount bankAccount = BankAccount(100);
//
//   /// This is how we call static member of a class
//   print(BankAccount.nrOfObjects);
//   BankAccount bankAccount2 = BankAccount.newClient();
//   BankAccount bankAccountVip = BankAccount.newVipClient(12);
//   bankAccount.withdraw(20);
//   print(bankAccount.balance);
//   print(bankAccountVip.balance);
//   print('Number of objects is ${BankAccount.nrOfObjects}');
//   print(Strings.loading);
//
//   int doubleValue = Strings.doubleValue(3);
//   print(doubleValue);
//
//   ///More useful will
// }
//
// class Strings {
//   static String loading = 'Loading file';
//   static String userAndPass = 'WRONG PASS DUDE!!';
//   static String error = 'This error if FUCKED!!';
//
//   /// This is static methods
//   static int doubleValue(int value) => value * 2;
// }
/// Provider example
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }
//
// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     print('Building MainPage');
//     return ChangeNotifierProvider(
//       create: (context) => AppData(),
//       builder: (context, child) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Consumer<AppData>(
//                 builder: (context, data, child) => Text(data.name),
//                 child: child),
//           ),
//           body: Screen2(),
//         );
//       },
//     );
//   }
// }
//
// class Screen2 extends StatelessWidget {
//   const Screen2({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     print('Building Screen2');
//     return Container(
//       child: Screen3(),
//     );
//   }
// }
//
// class Screen3 extends StatelessWidget {
//   const Screen3({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     print('Building Screen3');
//     return Container(
//       child: Screen4(),
//     );
//   }
// }
//
// class Screen4 extends StatelessWidget {
//   const Screen4({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     print('Building Screen4');
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Consumer<AppData>(
//             builder: (context, data, _) => Text(data.name),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Provider.of<AppData>(context, listen: false)
//                   .changeData('Chuck Norris');
//             },
//             child: Text('Change data'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class AppData with ChangeNotifier {
//   String _name = 'John Rambo';
//   void changeData(String data) {
//     _name = data;
//     notifyListeners();
//   }
//
//   get name {
//     return _name;
//   }
// }

// Added new comment
// Another comment added
// More comment added
