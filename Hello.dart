import 'dart:io';
import 'dart:math';

void main() {

  print(' КАЛЬКУЛЯТОР ');

  double? num1 = getNumber('первое');
  double? num2 = getNumber('второе');
  
  if (num1 == null || num2 == null) {
    print('Ошибка ввода');
    return;
  }
  
 
  print('АРИФМЕТИЧЕСКИЕ ОПЕРАЦИИ ');

  
 
  print('1. Сложение: $num1 + $num2 = ${num1 + num2}');
  
  print('2. Вычитание: $num1 - $num2 = ${num1 - num2}');
  
  print('3. Умножение: $num1 × $num2 = ${num1 * num2}');
  
  if (num2 != 0) {
    print('4. Деление: $num1 ÷ $num2 = ${num1 / num2}');
  } else {
    print('4. Деление: $num1 ÷ $num2 = ОШИБКА ');
  }
  
  if (num2 != 0) {
    print('5. Целочисленное деление: $num1 ~/ $num2 = ${num1 ~/ num2}');
  } else {
    print('5. Целочисленное деление: $num1 ~/ $num2 = Деление на ноль');
  }
  
  if (num2 != 0) {
    print('6. Остаток от деления: $num1 % $num2 = ${num1 % num2}');
  } else {
    print('6. Остаток от деления: $num1 % $num2 = Деление на ноль');
  }
  
  print('7. Возведение в степень: pow($num1, $num2) = ${pow(num1, num2)}');
  
 
  print('ОПЕРАТОРЫ СРАВНЕНИЯ ');

  
  print('Сравнение чисел $num1 и $num2:\n');
  
  
  print('1. Оператор "==" (равно):');
  if (num1 == num2) {
    print('   $num1 == $num2 -> true (числа равны)');
  } else {
    print('   $num1 == $num2 -> false (числа не равны)');
  }
  
  print('\n2. Оператор "!=" (не равно):');
  if (num1 != num2) {
    print('   $num1 != $num2 -> true (числа разные)');
  } else {
    print('   $num1 != $num2 -> false (числа одинаковые)');
  }
  
  print('\n3. Оператор ">" (больше):');
  if (num1 > num2) {
    print('   $num1 > $num2 -> true (первое больше)');
  } else {
    print('   $num1 > $num2 -> false (первое не больше)');
  }
  
  print('\n4. Оператор "<" (меньше):');
  if (num1 < num2) {
    print('   $num1 < $num2 -> true (первое меньше)');
  } else {
    print('   $num1 < $num2 -> false (первое не меньше)');
  }
  
  print('\n5. Оператор ">=" (больше или равно):');
  if (num1 >= num2) {
    print('   $num1 >= $num2 -> true (первое больше или равно)');
  } else {
    print('   $num1 >= $num2 -> false (первое меньше)');
  }
  
  print('\n6. Оператор "<=" (меньше или равно):');
  if (num1 <= num2) {
    print('   $num1 <= $num2 -> true (первое меньше или равно)');
  } else {
    print('   $num1 <= $num2 -> false (первое больше)');
  }
  
  print('Программа завершена');

}

// Функция для безопасного ввода чисел
double? getNumber(String which) {
  while (true) {
    stdout.write('Введите $which число: ');
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      print('Ошибка: ввод пустой. Попробуйте снова.\n');
      continue;
    }
    
    try {
      return double.parse(input);
    } catch (e) {
      print('Ошибка: "$input" не является числом. Попробуйте снова\n');
    }
  }
}