void main() {
  int num1 = 9;
  int num2 = 4;
  int answer = num1 ~/ num2 ;
  print(answer);
  if(num1 > num2) {
    print("$num1 is the largest.");
    print(num1 * num1);
  }
  else {
    print("$num2 is the largest.");
    print(num2 * num2);
  }
}