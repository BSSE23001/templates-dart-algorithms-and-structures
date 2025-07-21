class Bank {
  // Setting the private attribut by using "_"
  // NOTE THIS IS NOT PRIVATE TO THE CLASS BUT PRIVATE TO THIS FILE MEANS THIS LIBRARY
  double _balance = 0;

  // Note after get we can use any name to refer the private attribute
  // We could use balance instead retreiveIt.
  // it will be used as bank.retreiveIt or bank.balance (if used balance instead of retreiveIt)
  double get retreiveIt => _balance;

  // Although putIt is a function but it will behave exactly like getter means
  // bank.putIt = 98.5; or bank.balance = 98.5; (if used balance instead of putIt) like set balance(double amt) {}
  set putIt(double amt) {
    if(amt > 0) {
      _balance = amt;
    } else {
      print("Cant put the amount");
    }
  }
}