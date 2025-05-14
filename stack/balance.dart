bool isBalanced(String input) {
  final stack = <String>[];
  for (final char in input.split('')) {
    if (char == '(') {
      stack.add(char); // Push '(' onto the stack
    } else if (char == ')') {
      if (stack.isEmpty) return false; // Unmatched ')'
      stack.removeLast(); // Pop the matching '('
    }
  }
  return stack.isEmpty; // True if all '(' were matched
}

void main() {
  print(isBalanced("((a + b))"));   // true
  print(isBalanced(")("));          // false (unmatched)
  print(isBalanced("(a + b)("));    // false (unbalanced)
}
//Stack Challenge 2