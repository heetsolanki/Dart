void calculateFactorial(int num) {
  int fact = 1, i = 1;
  while(i <= num) {
    fact *= i;
    i++;
  }
  print("Factorial of ${num} is ${fact}");
}

void main() {
  calculateFactorial(5);
}