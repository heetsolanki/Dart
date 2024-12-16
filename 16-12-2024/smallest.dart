void main() {
  int a = 9;
  int b = 9;
  int c = 8;
  if(a == b && b == c && a == c) {
    print("All three numbers are equal");
  }
  else {
    if(a < b) {
      if(a < c ) {
        print("a is the smallest number");
      }
      else {
        print("c is the smallest number");
      }
    }
    else {
      if(b < c) {
        print("b is the smallest number");
      }
      else {
        print("c is the smallest number");
      }
    }
  }
}