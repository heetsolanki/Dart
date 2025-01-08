class Person {
  String? name;
  String? occupation;
  String? location;

  Person.withoutLocation(this.name, this.occupation);
  Person.withCompleteInfo(this.name, this.occupation, this.location);

  void displayInfo() {
    print("I am $name with occupation as ${this.occupation}");
  }
}

class Employee extends Person {
  String? branchName;
  static String companyName = "Zerodha";

  Employee.withCompleteInfo(String name, String occupation, String location, this.branchName) : super.withCompleteInfo(name, occupation, location);

  void displayInfo() {
    super.displayInfo();
    print("I work in $branchName branch of $companyName");
  }
}

void main() {
  Person person = new Person.withCompleteInfo("Nithin Kamath", "CEO", "Bengaluru");
  person.displayInfo();

  Employee employee = new Employee.withCompleteInfo("Nikhil Kamath", "Co-founder", "Bengaluru", "Bengaluru");
  employee.displayInfo();
}