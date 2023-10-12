import 'dart:io';

List<String> groceryItems = [];

void addItemToList() {
  print('Sláðu inn hlut til að bæta við innkaupalistann:');
  String? item = stdin.readLineSync();
  groceryItems.add(item!);
}

void viewList() {
  print('Innkaupalisti:');
  for (String item in groceryItems) {
    print(item);
  }
}

void main() {
  bool exit = false;
  while (!exit) {
    print('Menu:');
    print('1. Bæta hlut á innkaupalistann');
    print('2. Sjá innkaupalista');
    print('3. Loka forriti');
    String? choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        addItemToList();
        break;
      case '2':
        viewList();
        break;
      case '3':
        exit = true;
        break;
      default:
        print('Ekki rétt valið. Vinsamlegast reynið aftur.');
    }
  }
}
