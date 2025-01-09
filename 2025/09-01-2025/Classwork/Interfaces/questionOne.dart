class Employee {
  void employeeInfo() {
    print("I am in Employee class");
  }
}

class Athlete {
  void athleteInfo() {
    print("I am in Athlete class");
  }
}

class Developer implements Employee, Athlete {
  void employeeInfo() {
    print("I am a developer in Employee class");
  }
  void athleteInfo() {
    print("I am a developer in Athlete class");
  }
}

void main() {
  Developer developer = new Developer();
  developer.employeeInfo();
  developer.athleteInfo();
}