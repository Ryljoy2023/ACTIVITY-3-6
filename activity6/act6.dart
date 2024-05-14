class Stack<T> {
  List<T> _stack = [];

  // Method to push an element onto the stack
  void push(T element) {
    _stack.add(element);
  }

  // Method to pop an element from the stack
  T pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _stack.removeLast();
  }

  // Method to check if the stack is empty
  bool isEmpty() {
    return _stack.isEmpty;
  }
}

void main() {
  // Create a stack of integers
  Stack<int> stack = Stack<int>();

  // Push elements onto the stack
  stack.push(1);
  stack.push(2);
  stack.push(3);

  // Pop elements from the stack and print them
  while (!stack.isEmpty()) {
    print(stack.pop());
  }
}
