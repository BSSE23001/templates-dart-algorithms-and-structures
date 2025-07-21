class Person {
  String name;
  int age;

  // This is the default constructor
  Person(this.name, this.age);

  void sayHello() {
    print("Hi, I am $name, and I am $age years old");
  }
}