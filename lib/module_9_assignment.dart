abstract class Animal {
  String _name;
  Animal(this._name);
  void makeSound();
  void showInfo();
}

class Lion extends Animal {
  double _maneSize;
  Lion(String name, this._maneSize) : super(name);

  double get maneSize => _maneSize;
  set maneSize(double size) {
    if (size > 0) _maneSize = size;
  }

  @override
  void makeSound() => print("Roar!");
  @override
  void showInfo() => print("Lion: $_name, \n"
      "Mane Size: $_maneSize cm,");
}

class Elephant extends Animal {
  double _trunkLength;
  Elephant(String name, this._trunkLength) : super(name);

  double get trunkLength => _trunkLength;
  set trunkLength(double length) {
    if (length > 0) _trunkLength = length;
  }

  @override
  void makeSound() => print("Trumpet!");
  @override
  void showInfo() => print("Elephant: $_name, \n"
      "Trunk Length: $_trunkLength cm,");
}

class Parrot extends Animal {
  int _vocabularySize;
  Parrot(String name, this._vocabularySize) : super(name);

  int get vocabularySize => _vocabularySize;
  set vocabularySize(int size) {
    if (size >= 0) _vocabularySize = size;
  }

  @override
  void makeSound() => print("Squawk! Hello!");
  @override
  void showInfo() => print("Parrot: $_name, \n"
      "Vocabulary Size: $_vocabularySize words,");
}

void main() {
  List<Animal> zoo = [
    Lion("Lion_King", 29.5),
    Elephant("Gumbo", 150.0),
    Parrot("Molly", 50)
  ];

  for (var animal in zoo) {

    animal.showInfo();
    animal.makeSound();

  }
}
