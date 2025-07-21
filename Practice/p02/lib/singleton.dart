import 'package:synchronized/synchronized.dart';

// 1. Factory Constructor Singleton - Serves the private static instance of library
class SingletonFactory {
  SingletonFactory._();
  static final SingletonFactory _instance = SingletonFactory._(); // This is making private static instance
  factory SingletonFactory() => _instance;  // This is serving private static instance
}

// 2. Static Field Singleton - Provides a public static variable to be easily accessible by the caller
class SingletonStatic {
  static final SingletonStatic instance = SingletonStatic._();
  SingletonStatic._();
}

// 3. Lazy Initialization Singleton with Getter - this serves private static instance using getter method
class SingletonLazy {
  static SingletonLazy? _instance;
  SingletonLazy._();
  static SingletonLazy get instance => _instance ??= SingletonLazy._();
}

// 4. Synchronized (Thread-safe) Singleton
class SingletonSynchronized {
  static SingletonSynchronized? _instance;
  SingletonSynchronized._();
  static SingletonSynchronized get instance {
    _instance ??= SingletonSynchronized._();
    return _instance!;
  }
}


class SingletonSynchronizedLock {
  static SingletonSynchronizedLock? _instance;
  static final Lock lock = Lock();
  SingletonSynchronizedLock._();
  static Future<SingletonSynchronizedLock> get instance async {
    if(_instance == null) {
      // In dart the synchronized handles locking and unlocking along with the
      // doing the functionality we told
      // All the other concepts are same
      await lock.synchronized(() {
        _instance ??= SingletonSynchronizedLock._();
      });
    }
    return _instance!;
    // This is the powerfull use of '!' operator because it enable us to
    // return a nullable variable for a functionality that don't allow to
    // return a null value
  }
}

// 5. Singleton using static method
class SingletonStaticMethod {
  final SingletonStaticMethod instance = SingletonStaticMethod._();
  SingletonStaticMethod._();
  SingletonStaticMethod getInstance() => instance;
}

// 6. Singleton using global variable
class SingletonGlobal {
  SingletonGlobal._();
}
final SingletonGlobal singletonGlobal = SingletonGlobal._();