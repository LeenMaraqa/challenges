class CustomStack<T> {
  final _elements = <T>[]; 

  void pushElement(T element) {
    _elements.add(element);
  }
  T popElement() {
    if (_elements.isEmpty) {
      throw StateError('The stack is empty');
    }
    return _elements.removeLast();
  }
  bool get hasElements => _elements.isNotEmpty;
}

void printReversedList<T>(List<T> inputList) {
  var customStack = CustomStack<T>();
  for (T item in inputList) {
    customStack.pushElement(item);
  }
  while (customStack.hasElements) {
    print(customStack.popElement());
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original List: $numbers");
  print("Reversed List:");
  printReversedList(numbers);
}