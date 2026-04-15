import 'package:practos3/practos3.dart' as practos3;

import 'dart:io';
import 'dart:math';
import 'package:characters/characters.dart';

enum Mood {
  
  happy(emoji: '\u{1F600}', description: 'счастливый', energy: 8),
  calm(emoji: '\u{1F610}', description: 'спокойный', energy: 6),
  sad(emoji: '\u{1F622}', description: 'грустный', energy: 4),
  eepy(emoji: '\u{1F971}', description: 'сонный', energy: 1),
  tired(emoji: '\u{1F62B}', description: 'уставший', energy: 3),
  realyMad(emoji: '\u{1F621}', description: 'очень злой', energy: 4);

  final String emoji;
  final String description;
  final int energy;

  const Mood({
    required this.emoji,
    required this.description,
    required this.energy,
  });
}

void main() {
  stdout.write('Введите ваше имя: ');
  String name = stdin.readLineSync()?.trim() ?? '';
  if (name.isEmpty) name = 'Гость';

  final random = Random();
  final moods = Mood.values;
  final randomMood = moods[random.nextInt(moods.length)];

  print('\nГенерируем случайное настроение...');
  print('Привет, $name! Твое настроение: ${randomMood.emoji} ${randomMood.description} (энергия: ${randomMood.energy}/10)');

  final int codePoint = randomMood.emoji.runes.first;
  print('Юникод вашего эмодзи: U+${codePoint.toRadixString(16).toUpperCase()}');

  stdout.write('\nХотите просмотреть сложные эмодзи? (y/n): ');
  String answer = stdin.readLineSync()?.trim().toLowerCase() ?? 'n';

  if (answer == 'y') {
    stdout.write('Введите комбинацию эмодзи: ');
    String complexEmoji = stdin.readLineSync()?.trim() ?? '';

    if (complexEmoji.isNotEmpty) {
      print('\nАнализ строки "$complexEmoji":');
      print('- 16-битных единиц: ${complexEmoji.length}');
      print('- Кодовых точек: ${complexEmoji.runes.length}');
      print('- Реальных символов: ${complexEmoji.characters.length}');

      print('\nПодробный вывод юникода:');
      int index = 1;
      for (int rune in complexEmoji.runes) {
        String symbol = String.fromCharCode(rune);
        String codeHex = rune.toRadixString(16).toUpperCase();
        print('Символ $index: $symbol → U+$codeHex');
        index++;
      }
    } else {
      print('Ошибка: не было введено эмодзи.');
    }
  }

  print('\nСпасибо, приходите снова!');
}
