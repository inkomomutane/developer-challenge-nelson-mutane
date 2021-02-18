void main() {
  var array = <int>[];
  for (var i = 0; i < 8; i++) {
    array.add(i);
  }
  print(bSearch(array, 1));
}

int count = 0;
int bSearch(List<int> list, int number) {
  if (list.isNotEmpty) {if (list.length == 1) {if (list.last == number) {return number;} else {
        return -1;}
    } else {
      var middle = (list.length ~/ 2);
      if (number == list.elementAt(middle)) {return number;} else if (number > list.elementAt(middle)) {print(++count);
        return bSearch(list.sublist(middle), number);
      } else {print(++count);return bSearch(list.sublist(0, middle), number);}
    }
  }
  return -1;
}
