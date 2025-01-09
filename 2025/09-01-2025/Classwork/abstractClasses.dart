abstract class Employee {
  void salaryCalculation();
}

class Manager extends Employee {
  int? basicPay;
  double? tax;
  int? allowance;
  int? bonus;

  Manager(this.basicPay, this.tax, this.bonus, this.allowance);
  void salaryCalculation() {
    double salaryAfterTax = basicPay! * tax!;
    double totalSalary = (basicPay! - salaryAfterTax) + allowance! + bonus!;
    print("Total Salary of Manager: ${totalSalary} PM");
  }
}

class Developer extends Employee {
  int? basicPay;
  double? tax;
  int? bonus;

  Developer(this.basicPay, this.tax, this.bonus);
  void salaryCalculation() {
    double salaryAfterTax = basicPay! * tax!;
    double totalSalary = (basicPay! - salaryAfterTax) + bonus!;
    print("Total Salary of Developer: ${totalSalary} PM");
  }
}

void main() {
  Manager m = new Manager(250000, 0.18, 25000, 55000);
  m.salaryCalculation();
  Developer d = new Developer(350000, 0.18, 105000);
  d.salaryCalculation();
}