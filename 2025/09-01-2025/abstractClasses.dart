abstract class Employee {
  void salaryCalculation();
}

class Manager extends Employee {
  void salaryCalculation() {
    print("Salary of Manager: 250000");
  }
}

class Developer extends Employee {
  void salaryCalculation() {
    print("Salary of Developer: 150000");
  }
}

void main() {
  Manager m = new Manager();
  m.salaryCalculation();
  Developer d = new Developer();
  d.salaryCalculation();
}