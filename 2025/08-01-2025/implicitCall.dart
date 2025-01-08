class Person {
  Person() {
    print("I am in the super class constructor.");
  }
}

class Employee extends Person {
  Employee() {
    print("I am in the child class constructor.");
  }
}

void main() {
  new Employee();
}