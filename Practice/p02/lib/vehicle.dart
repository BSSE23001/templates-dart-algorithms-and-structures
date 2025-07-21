abstract class Vehicle {
  void drive();
}

class Truck implements Vehicle {
  @override
  void drive() {
    print("How am I driving......");
  }
}