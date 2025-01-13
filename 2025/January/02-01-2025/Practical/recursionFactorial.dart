int factorial(int num) {
  if(num <= 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

void main() {
  int num = 6;
  int f = factorial(num);
  print("Factorial of $num is $f.");
}
