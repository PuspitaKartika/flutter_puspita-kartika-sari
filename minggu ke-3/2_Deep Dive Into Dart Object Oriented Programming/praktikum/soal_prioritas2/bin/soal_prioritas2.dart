class Matematika {
  double hasil(double x, double y) {
    return 0;
  }
}

class KelipatanPersekutuanTerkecil implements Matematika {
  double x;
  double y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  // Rumus KPK(x, y) = (x * y) / FPB(x, y)
  @override
  double hasil(double x, double y) {
    double result = (this.x * this.y) / fpb(this.x, this.y);
    print('Kelipatan Persekutuan Terkecil: $result');
    return result;
  }

  double fpb(double a, double b) {
    while (b != 0) {
      var temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}

class FaktorPersekutuanTerbesar implements Matematika {
  double x;
  double y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  double hasil(double x, double y) {
    while (y != 0) {
      var temp = y;
      y = x % y;
      x = temp;
    }
    print('Faktor Persekutuan Terbesar: $x');
    return x;
  }
}

void main() {
  KelipatanPersekutuanTerkecil kpk = KelipatanPersekutuanTerkecil(12, 18);
  kpk.hasil(kpk.x, kpk.y);

  FaktorPersekutuanTerbesar fpb = FaktorPersekutuanTerbesar(24, 36);
  fpb.hasil(fpb.x, fpb.y);
}
