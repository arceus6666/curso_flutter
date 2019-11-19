import 'dart:math';

class Operaciones {
  num x;
  num y;

  Operaciones(num x, num y) {
    this.x = x;
    this.y = y;
  }

  num suma() {
    return this.x + this.y;
  }

  num aleatorio(int n) {
    return new Random().nextInt(n);
  }
}
