class MyPoint {
  int x,y;

  MyPoint(this.x, this.y);

  @override
  bool operator ==(Object other) {
    return other is MyPoint && other.x == x && other.y == y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  String toString() {
    return """Point having the following:\n
    X:> BitLenght: ${x.bitLength}, RuntimeType: ${x.runtimeType}, HashCode: ${x.hashCode}\n
    Y:> BitLenght: ${y.bitLength}, RuntimeType: ${y.runtimeType}, HashCode: ${y.hashCode}\n
    Complete Hashcode: $hashCode\n
    """;
  }
}