// Task 4
// Link -> https://docs.google.com/document/d/1vMB0oNpgwrlpVa229OdE8pazl7NG7oqa/edit

// ---- main ---- //

void main() {
  // Introduction To Dart -> 1
  print(getMaxNumber([3, 4, 5, 66, 32]));

  print('');

  // OOP -> 1
  var mobileIPhone11Pro = Mobile('iPhone', '11 Pro', 22000, 900);
  var mobileSamsungGalaxyS20 = Mobile('Samsung', 'Galaxy S 20', 21000, 1500);
  var mobileOnePlus7 = Mobile('One Plus', '7', 19000, 1100);
  print('iPhone 11 is -> $mobileIPhone11Pro -> ${mobileIPhone11Pro.getActualPrice()}');
  print('Samsung Galaxy S 20 is -> $mobileSamsungGalaxyS20, So Actual Price is  ${mobileSamsungGalaxyS20.getActualPrice()}');
  print('One Plus 7 is -> $mobileOnePlus7, So Actual Price is ${mobileOnePlus7.getActualPrice()}');

  print('');

  // Search -> 1
  print(factorial(3));
  print(factorial(5));

  print('');

  // Search -> 2
  print(checkPassword('h'));
  print(checkPassword('A'));
  print(checkPassword('Hi@'));
  print(checkPassword('Hiadasdasd'));

  print('');

  // Search -> 3
  var superhero = Superhero();
  superhero.fly();
  superhero.swim();
  superhero.useSuperPowers();
}

// ---- Introduction to Dart ---- //
// Q 1. Write a function that takes an array as a parameter then return
// the Maximum number in the list.
num getMaxNumber(List<num> list) {
  num max = 0;
  for (var number in list) {
    if (number > max) {
      max = number;
    }
  }
  return max;
}

// ---- OOP --- //
// Q 1. Exercise 1
class Mobile {

  String brand;
  String model;
  int price;
  int discount;

  Mobile(this.brand, this.model, this.price, this.discount);

  int getActualPrice() {
    return price - discount;
  }

  void printDetails() {
    print("Brand = $brand, Model = $model, Price = $price, Discount = $discount");
  }

}

// ---- Search ---- //
// Q 1. Search
int factorial(int number) {
  if (number == 0 || number == 1) {
    return 1;
  }

  var result = 1;
  while (number > 1) {
    result *= number--;
  }

  return result;
}

// Q 2. Validation
String checkPassword(String password) {
  if (!RegExp(r'[A-Z]').hasMatch(password)) {
    return 'Must have at least 1 Upper case character';
  }else if (!RegExp(r'[a-z]').hasMatch(password)) {
    return 'Must have at least 1 lower case character';
  }else if (RegExp(r'[!@#$%^&*.]').hasMatch(password)) {
    return 'Must Not have any special character';
  }else if (password.length < 8) {
    return 'Must have at least 8 character';
  }else {
    return 'Correct Password';
  }
}

// Q 3. Extend more than 1 class
class Bird {
  void fly() {
    print('Flying ...');
  }
}

class Fish {
  void swim() {
    print('Swimming ...');
  }
}

class Superhero with Bird, Fish {
  void useSuperPowers() {
    print('Using super powers ...');
  }
}
