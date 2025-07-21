import 'package:p02/p02.dart';
import 'package:p02/car.dart';
import 'package:p02/bank.dart';
import 'package:p02/animal.dart';
import 'package:p02/math_utils.dart';
import 'package:p02/mixinp.dart';
import 'package:p02/vehicle.dart';
import 'package:p02/my_point.dart';

enum Status { pending, approved, rejected }

void main(List<String> arguments) {
  var me = Person("Hamza", 15);
  me.sayHello();

  Car helicopter = Car("Helicopter", 1998);
  helicopter.doIt();

  Bank b = Bank();
  b.putIt = 98.5;
  print(b.retreiveIt);

  Animal dog = Dog();
  dog.speak();

  print(MathUtils.pi);
  print(MathUtils.square(6));

  var s = Status.approved;
  print(s);

  switch(s) {
    case Status.approved:
      print("Approved!");
      break;
    case Status.pending:
      print("Still Pending!");
      break;
    case Status.rejected:
      print("Rejected!");
      break;
  }

  Duck d = Duck();
  d.quack();
  d.swim();
  d.fly();

  Vehicle v = Truck();

  v.drive();

  var p1 = MyPoint(13, 22);
  var p2 = MyPoint(18, 20);

  print(p1);
  print(p2);

  print(p1 == p2);

}
