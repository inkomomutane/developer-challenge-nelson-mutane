 class LinkedList<T> {
  T element;
  LinkedList next;

  void insert(T element) {
    if (this.element == null) {
      this.element = element;
    } else {
      next = insertOnList(next, element);
    }
  }

  LinkedList insertOnList(LinkedList<T> linkedList, T element) {
    if (linkedList == null) {
      LinkedList<T> news;
      linkedList = news;
      linkedList.element = element;
    } else {
      linkedList.next = insertOnList(linkedList.next, element);
    }
    return linkedList;
  }

  int length() {
    return 1 + count(next);
  }

  int    count(LinkedList linkedList) {
    if (linkedList == null) {
      return 0;
    } else {
      return 1 + count(linkedList.next);
    }
  }

  @override
  String toString() {
    var toString = 'LinkedList{';

    if (element == null) {
      return 'LinkedList: {}';
    } else {
      var aux = next;
      toString += '$element, ';
      while (aux != null) {
        toString += '${aux.element}, ';
        aux = aux.next;
      }
      toString += '}';
    }
    return toString;
  }
}
