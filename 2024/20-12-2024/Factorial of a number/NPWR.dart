int calculateFactorial() {
  int num = 6, fact = 1, i = 1;
  while(i <= num) {
    fact *= i;
    i++;
  }
  return fact;
}

void main() {
  int result = calculateFactorial();
  print("Factorial is ${result}");
}