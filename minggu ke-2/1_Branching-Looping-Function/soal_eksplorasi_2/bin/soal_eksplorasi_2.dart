import 'dart:io';

void main(List<String> arguments) {
  int bilangan = 9;

  tabelPerkalian(bilangan: bilangan);
}

tabelPerkalian({required int bilangan}) {
  int sum;

  for (int i = 1; i <= bilangan; i++) {
    sum = i;
    stdout.write(i);

    for (int j = 1; j < bilangan; j++) {
      stdout.write('${sum += i}'.padLeft(3));
    }

    print('');
  }
}
