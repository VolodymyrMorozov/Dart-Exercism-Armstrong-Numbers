import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    if (number == 0) {
      return true;
    }

    int calcNumber = number;
    List<num> resultLst = List();
    while (calcNumber != 0) {
      resultLst.add(calcNumber.remainder(10));
      calcNumber = calcNumber ~/ 10;
    }

    return number ==
        resultLst
            .map((value) => pow(value, resultLst.length))
            .reduce((value, element) => value + element);
  }
}
