// import 'package:p01/p01.dart' as p01;

void main(List<String> arguments) {

  /////// PART 1

  // print("Hello My Dart Boy!");

  // int age = 5;
  // double height = 23.8;
  // String name = "Hamza";
  // bool isProgrammer = true;

  // print("My name is $name, having age $age, with height $height, and programmer: $isProgrammer");
  
  // var city = "Lahore";
  // var score = 3.87;

  // print("City: $city, Prev CGPA: $score");

  // dynamic doit = "Hello";
  // print(doit);

  // doit = 3.90;
  // print(doit);

  // Object obj = "I am an All rounder.";
  // print(obj);



  /////// PART 2


  // String? mname;
  // print("IS it name: $mname");

  // // Below Line will give an error because the mname is null now
  // // print("Length: ${mname!.length}");

  // // But not the same for below lines
  // mname = "Shabalu";
  // // Both below line have same effect now
  // print("Now the length is: ${mname.length}");

  // // '!' This operator can be used only with nullable variables
  // // And is used in UI When we dont know what will user do
  // // Will he enter the value or not so that we could handle
  // // accordingly without crashing
  // // '!' This doesn't print anything incase of null instead throws
  // // an exception which can be comprehended to do the required thing 
  // print("Now the length is: ${mname!.length}");

  // // '?.' This operator don't throw exception instead if the
  // // value is null then it just prints the null but the difference between
  // // normal one and this one is that it can be helpfull in dynamic, Object
  // // and other such types
  // print("Now whats the matter: ${mname?.length}");
  // mname = null;
  // print("Now whats the matter: ${mname?.length}");

  // // '??' This operator checks if the value is null then Assign the value on righ
  // // hand side
  // String cname = mname ?? "Chucha";
  // print(cname);

  // // '??=' This is much important operator, It checks the variable for null
  // // and assigns the right hand value ONLY WHEN THE VARIABLE IS NULL if not
  // // do nothing
  // mname ??= "Shawala";

  // // 'late' dosn't make the string null safe or something like that instead
  // // it make a variable which must be initialized before use. If it is not
  // // initialized then error occurs;
  // late String lazyString;
  // // print(lazy_string); This will give the error
  // lazyString = "De Boye!.";
  // print(lazyString);


  ///////// PART 3
  
  // // 'final' just make a constant but its value is calculated at runtime means
  // // when the program reaches code part containing it or mounts a widget containing
  // // this then it calculates and assigns the value and after that this just behaves
  // // as a normal constant
  // final time = DateTime.now();
  // print("Now date is $time");

  // // 'const' just make a compile time constant as normal cpp constant
  // const pi = 3.1475;
  // print("Value of pi is: $pi");

  // int x = 5;
  // x += 2;
  // print('x is now $x');

  // bool isAdult = (x >= 18) ? true : false;
  // print('Is adult? $isAdult');

  // String? userInput;
  // String result = userInput ?? 'Default Value';
  // print(result);


  /////// PART 4
  
  greet("Hamza", age: 18);
  greet("Tayyab");

  int square(int x) => x*x;
  print("The Square of 2 is: ${square(2)}");

  Function counter = makeCounter();
  print(counter());
  print(counter());
  print(counter());
}

void greet(String name, {int age = 20}) {
  print("My Name is: $name with age: $age");
}

Function makeCounter() {
  int count = 0;
  return () {
    count++;
    return count;
  };
}