mixin CanFly {
  void fly() => print("How am I Flying....");
}

mixin CanSwim {
  void swim() => print("How am I Swimming....");
}

class Duck with CanFly, CanSwim {
  void quack() => print("Kukru Kuruuuu!");
}