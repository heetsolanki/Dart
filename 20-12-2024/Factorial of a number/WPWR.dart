int calculateFactorial(int num) {
  int fact = 1, i = 1;
  while(i <= num) {
    fact *= i;
    i++;
  }
  return fact;
}

void main() {
  int num = 9;
  int result = calculateFactorial(num);
  print("Factorial of ${num} is ${result}");
}