import 'dart:convert';

import 'package:practos4/practos4.dart';

void main(List<String> arguments) {

Person person = Person("Антон");
Mug mug = Mug("красная");

person.drink(mug);

Bookshelf bookshelf = Bookshelf("Книжная полка");
Wardrobe wardrobe = Wardrobe('Гардероб');
KitchenCabinet kitchenCabinet = KitchenCabinet('Кухонный шкаф');

CombinedCabinet combinedCabinet = CombinedCabinet('Большой шкаф', bookshelf, wardrobe, kitchenCabinet);

var items = [
    Item('Учебник', 'Книга'),
    Item('Куртка', 'Одежда'),
    Item('Записная книжка', 'Книга'),
    Item('Гречка', 'Еда'),
    Item('Макароны', 'Еда'),
  ];

for (var item in items) {
    if (item.itemType == 'книга') {
      combinedCabinet.bookshelf.addItem(item.name);
    } else if (item.itemType == 'одежда') {
      combinedCabinet.wardrobe.addItem(item.name);
    } else if (item.itemType == 'еда') {
      combinedCabinet.kitchenCabinet.addItem(item.name);
    }
  }

combinedCabinet.inspectAll();


Bar bar = Bar(140);
Blin blin1 = Blin(60);
bar.addBlinToLeft(blin1);
Blin blin2 = Blin(50);
bar.addBlinToRight(blin2);
Blin blin3 = Blin(20);
bar.addBlinToLeft(blin3);
Blin blin4 = Blin(30);
bar.addBlinToRight(blin4);


double money = 10;

MoneyConverter moneyConverter = MoneyConverter();

moneyConverter.rubToUsd(money);
moneyConverter.usdToRub(money);


Rectangle rectangle = Rectangle(5, 8);

print('Периметр прямоугольника: ${rectangle.perimeter()}');
print('Площадь прямоугольника: ${rectangle.area()}');

Triangle triangle = Triangle(2, 4, 6);

print('Периметр треугольника: ${triangle.perimeter()}');
print('Площадь треугольника: ${triangle.area()}');

Circle circle = Circle(5);

print('Периметр окружности: ${circle.perimeter()}');
print('Площадь окружности: ${circle.area()}');

}


