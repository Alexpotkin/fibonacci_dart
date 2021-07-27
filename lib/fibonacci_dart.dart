import 'dart:io';

void main(List<String> arguments) {
  print('Сколько чисел Фибоначчи вывести на экран:');
  var line = stdin.readLineSync()!;

  try {
    var value = int.parse(line);
    if (value.isNegative) {
      print('Число не может быть отрицательным.');
      exit(0);
    }
    fibb(value);
  } on FormatException {
    print('Ошибка! Необходимо ввести натуральное число.');
  }
}

void fibb(value) {
  int a = 1, b = 1;
  if (value >= 2) {
    stdout.write('$a $b ');
  } else if (value == 1) {
    stdout.write('$a ');
  }
  for (int i = 2; i <= value - 1; i++) {
    int c = a + b;
    a = b;
    b = c;
    stdout.write('$b ');
  }
}
