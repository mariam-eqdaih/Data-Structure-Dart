void printReverse<T>(List<T> list) {
  final stack = list.toList(); // Copy the list to avoid modifying the original
  while (stack.isNotEmpty) {
    print(stack.removeLast()); // Pop and print the last element
  }
}

void main() {
  final myList = [1, 2, 3, 4, 5];
  printReverse(myList); // Output: 5 → 4 → 3 → 2 → 1
}
//Stack Challenge 1