class Person {
  String? name;

  Person() {
    print("I am in the super class constructor.");
  }

  Person.withName(this.name);
}

class Employee extends Person {
  String? branch;
  Employee() {
    print("I am in the child class constructor.");
  }
  
  Employee.withName(String name, this.branch) : super.withName(name);

  void displayInfo() {
    print(branch);
  }
}

void main() {
  Employee e = new Employee.withName("ABC", "Mumbai");
  e.displayInfo();
}