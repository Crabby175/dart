import 'dart:math';

class Mug {
  String color;

  Mug(this.color);

  getColor() {return color;}
}

class Person {
  String name;

  Person(this.name);

  void drink(Mug mug) {
    String mugColor = mug.getColor();
    print('$name пьёт из кружки. Эта кружка $mugColor.');
  }
}

//#######################################

class Item {
  String name;
  String itemType;

  Item(this.name, this.itemType);
}

abstract class Storage {
  String get name;
  String get storageType;
  List<String> get items;

  void addItem(String item);
  
  void removeItem(String item);

  void inspectStorage(String name);
}

class Bookshelf extends Storage {
  final String name;
  final String storageType = "Книга";
  final List<String> _items = [];

  Bookshelf(this.name);
 
  @override
  List<String> get items => _items;

  @override
  void addItem(String item) {
    _items.add(item);
    print('$item была добавлена на книжкую полку.');
  }

  @override
  void removeItem(String item) {
    if (_items.remove(item)) {
      print('$item была взята с полки.');
    } else {
      print('"$item" не найдена.');
    }
  }

  @override
  void inspectStorage(String name) {
    print('Осмотр книжной полки:');
    print('Имя: $name');             
    print('Тип: $storageType');
    if (items.isEmpty) {
      print('Содержимого нету.');
      } else {
        print('Содержимое: ${_items.join(", ")}');
      }
  }
}

class Wardrobe extends Storage {
  final String name;
  final String storageType = "Одежда";
  final List<String> _items = [];

  Wardrobe(this.name);

  @override
  List<String> get items => _items;

  @override
  void addItem(String item) {
    _items.add(item);
    print('$item была добавлена в гардероб.');
  }

  @override
  void removeItem(String item) {
    if (_items.remove(item)) {
      print('$item была взята из гардероба.');
    } else {
      print('"$item" не найдена.');
    }
  }

  @override
  void inspectStorage(String name) {
    print('Осмотр гардероба');
    print('Имя: $name');             
    print('Тип: $storageType');
    if (items.isEmpty) {
      print('Содержимого нету.');
      } else {
        print('Содержимое: ${_items.join(", ")}');
      }
  }
}

class KitchenCabinet extends Storage {
  final String name;
  final String storageType = "Еда";
  final List<String> _items = [];

  KitchenCabinet(this.name);

  @override
  List<String> get items => _items;

  @override
  void addItem(String item) {
    _items.add(item);
    print('$item была добавлена в кухонный шкаф.');
  }

  @override
  void removeItem(String item) {
    if (_items.remove(item)) {
      print('$item была взята из кухонного шкафа.');
    } else {
      print('"$item" не найдена.');
    }
  }

  @override
  void inspectStorage(String name) {
    print('Осмотр кухонного шкафа');
    print('Имя: $name');             
    print('Тип: $storageType');
    if (items.isEmpty) {
      print('Содержимого нету.');
      } else {
        print('Содержимое: ${_items.join(", ")}');
      }
  }
}

class CombinedCabinet {
  final String name;
  final Bookshelf bookshelf;
  final Wardrobe wardrobe;
  final KitchenCabinet kitchenCabinet;

  CombinedCabinet(this.name, this.bookshelf, this.wardrobe, this.kitchenCabinet);

  void inspectAll() {
    print('Объединённое хранилище "$name":');
    bookshelf.inspectStorage(bookshelf.name);
    wardrobe.inspectStorage(wardrobe.name);
    kitchenCabinet.inspectStorage(kitchenCabinet.name);
  }
}

//############################################

class Blin {
  final int weight;

  Blin(this.weight);
}

class Bar {
  final int maxweight;
  List<Blin> leftSlot = [];
  List<Blin> rightSlot = [];

  Bar(this.maxweight);

  int checkBarWeight() {
    int sum = 0;
    for(Blin blin in leftSlot) {
      sum = sum + blin.weight;
    }
    for(Blin blin in rightSlot) {
      sum = sum + blin.weight;
    }
    return sum;
  }

  void addBlinToLeft(Blin blin) {
    int currentWeight = checkBarWeight();
    if (currentWeight + blin.weight > maxweight) {
      print('Нельзя добавить блин, так как вес будет превышать максимальный');
    } else {
      leftSlot.add(blin);
      print('Добавлен блин ${blin.weight} кг на левую часть грифа. Общий вес: ${checkBarWeight()} кг.');
    }
  }

  void addBlinToRight(Blin blin) {
    int currentWeight = checkBarWeight();
    if (currentWeight + blin.weight > maxweight) {
      print('Нельзя добавить блин, так как вес будет превышать максимальный.');
    } else {
      rightSlot.add(blin);
      print('Добавлен блин ${blin.weight} кг на правую часть грифа. Общий вес: ${checkBarWeight()} кг.');
    }
  }
}

//######################################

class MoneyConverter {
  double? convertResult;

  void rubToUsd(double money) {
    convertResult = money * 0.014;
    print('$money RUB = $convertResult USD');
  }

  void usdToRub(double money) {
    convertResult = money * 73.4;
    print('$money USD = $convertResult RUB');
  }
}

abstract class Shape {
  double perimeter();
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double perimeter() => 2 * (width + height);
  
  @override
  double area() => width * height;
}

class Triangle extends Shape {
  double a;
  double b;
  double c;

  Triangle(this.a, this.b, this.c);

  @override
  double perimeter() => a + b + c;

  @override
  double area() {
    double s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double perimeter() => 2 * pi * radius;

  @override
  double area() => pi * radius * radius;

}

