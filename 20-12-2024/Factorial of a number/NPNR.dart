void calculateFactorial() {
  int num = 4, fact = 1;
  for(var i = 1; i <= num; i++) {
    fact *= i;
  }
  print("Factorial of ${num} is ${fact}");
}

void main() {
  calculateFactorial();
}