class Car {
  String model;
  int year;

  // This is named constructor means we make a constructor
  // with a specific name
  Car.newsticker(this.model) : year = 2025;
  Car.lambourghini() : model = "Lambourghini", year=2025;
  // ERROR: This is an invalid constructor initializer.
  // In Dart, you cannot assign to instance variables inside the constructor body
  // when using an initializer list style for other constructors.
  // Instead, use an initializer list as shown below:

  Car.nissan()
      : model = "Nissan",
        year = 2025;

  // Default constructor
  Car(this.model, this.year);

// Positional parameters are parameters that are passed to a function or constructor based on their position/order, not by name.
// In Dart, positional parameters are listed inside parentheses ().
// Optional positional parameters are wrapped in square brackets [] and can be omitted when calling the function/constructor.
// If omitted, their default values (if provided) are used.
//
// Example usage of the Car.optional constructor:
//
// Car.optional();                // model = "Unknown", year = 2000 (both use default values)
// Car.optional("Tesla");         // model = "Tesla", year = 2000 (year uses default value)
// Car.optional("Toyota", 2022);  // model = "Toyota", year = 2022 (both values provided)
//
// The order matters: the first argument is assigned to 'model', the second to 'year'.
// You cannot skip 'model' and only provide 'year' without also providing

  // Named constructor with optional positional parameter
  Car.optional([this.model = "Unknown", this.year = 2000]);

  // Named constructor with optional named parameters
  Car.named({this.model = "Unknown", this.year = 2000});

  // Factory constructor
  factory Car.factory(String type) {
    if (type == "sports") {
      return Car("SportsCar", 2024);
    } else {
      return Car("Standard", 2020);
    }
  }

  final String type = "Car";
  // NOTE TO MAKE A CONSTANT CONSTRUCTOR THE ATTRIBUTES OF THE CLASS MUST BE DECLARED AS FINAL
  // IT IS MADE WHEN WE KNOW THAT SUCH OBJECT ONCE CREATED WILL NEVER CHANGE INSTEAD WILL ONLY
  // BE USED FOR ITS VALUES.
  // const Car.constant(this.model, this.year);
  // var nissan = Car.constant("nissan", 2025);    OR
  // const Car nissan = Car.constant("nissan", 2025);
  // NOW THIS nissan is immutable.



  void doIt() {
    print("Model: $model, Year: $year");
  }
}