import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    if (number == 0) {
      return true;
    }

    final int digits = (log(number) / ln10).ceil(); //log 10(x)
    int calcNumber = number;
    num result = 0;
    for (int i = 0; i < digits; i++) {
      result += pow(calcNumber % 10, digits);
      calcNumber = calcNumber ~/ 10;
    }

    return result == number;
  }
}
