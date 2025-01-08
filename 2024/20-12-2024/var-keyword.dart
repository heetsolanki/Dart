void main() {
  var i = 10, num;
  print(i);
  i = 25;
  print(i.runtimeType);
  num = 50;
  print("After changing the value i=${i}");
  // i = "Good Morning"; i was initialized with 'int' value, hence cannot be assigned as string ... ERROR
  num = "DART";
  print(num);
}