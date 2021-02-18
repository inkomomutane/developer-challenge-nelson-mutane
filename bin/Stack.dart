class Stack<T> {
  var elements = <T>[];
  void push(T element) {
    elements.insert(elements.length, element);
  }

  T pop() {
    return elements.removeLast();
  }

  int length() {
    return elements.length;
  }

  @override
  String toString() {
    return elements.toString();
  }
}