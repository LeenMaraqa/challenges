bool areBracketsBalanced(String text) {
  List<String> stack = [];
  Map<String, String> bracketPairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };
  
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (bracketPairs.containsValue(char)) {
      stack.add(char);
    } else if (bracketPairs.containsKey(char)) {
      if (stack.isEmpty || stack.removeLast() != bracketPairs[char]) {
        return false;
      }
    }
  }
  return stack.isEmpty;
}
void main() {
  print(areBracketsBalanced("(ab(c+d)(2c*a))")); 
  print(areBracketsBalanced("{[()]}")); 
  print(areBracketsBalanced("{[(])}")); 
  print(areBracketsBalanced("{[}"));    
}
