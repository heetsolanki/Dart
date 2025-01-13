void simpleInterest() {
  int principal = 125000;
  int term = 5;
  double rateOfInterest = 6.5;
  double simpleInterest = ((principal * term * rateOfInterest) / 100);
  print("Simple Interest: $simpleInterest");
}

void main() {
  simpleInterest();
}