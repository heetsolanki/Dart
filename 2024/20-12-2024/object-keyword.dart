void main() {
  Object obj = 10;
  print(obj.runtimeType);
  obj = true;
  // obj.substring(2); type checking during compile time
  print(obj.runtimeType);
  String str = "object as string";
  str.substring(2);
}
