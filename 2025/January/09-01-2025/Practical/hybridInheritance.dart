class Student {
  String? name;
  int? rollNo;
  static String institueName = "Somaiya Vidyavihar University";
  int? totalFees;
  int? pendingFees;
  bool isPaid;

  Student(this.name, this.rollNo, this.totalFees, this.pendingFees, this.isPaid);

  void displayInfo() {
    print("Name: $name");
    print("Roll No: $rollNo");
  }

  void feeInformation() {
    print("Fee Information for $name");
    print("Total Fees: $totalFees");
    print("Pending fees: $pendingFees");
  }

  void paymentStatus() {
    if(isPaid) {
      print("$name has paid the fees");
    }
    else {
      print("$name has not paid the fees");
    }
  }

  void makePayment() {
    isPaid = true;
    pendingFees = 0;
    print("$name has made the payment");
  }
}

class BCAStudent extends Student {
  String? subject;

  BCAStudent(String name, int rollNo, int totalFees, int pendingFees, bool isPaid, this.subject) : super(name, rollNo, totalFees, pendingFees, isPaid);

  void selectSubject() {
    print("$name is a BCA Student and selected $subject subject");
  }
}

class CommerceStudent extends Student {
  String? subject;

  CommerceStudent(String name, int rollNo, int totalFees, int pendingFees, bool isPaid, this.subject) : super(name, rollNo, totalFees, pendingFees, isPaid);

  void selectSubject() {
    print("$name is a Commerce Student and selected $subject subject");
  }
}

class BCAIntern extends BCAStudent {
  String? company;
  double? duration;
  double? stipend;

  BCAIntern(String name, int rollNo, int totalFees, int pendingFees, bool isPaid, String subject, this.company, this.duration, this.stipend) : 
  super(name, rollNo, totalFees, pendingFees, isPaid, subject);

  void internship() {
    print("$name works for $company. He/she is working for $duration months at a monthly stipend of Rs.$stipend");
  }
}

class CommerceIntern extends CommerceStudent {
  String? company;
  double? duration;
  double? stipend;

  CommerceIntern(String name, int rollNo, int totalFees, int pendingFees, bool isPaid, String subject, this.company, this.duration, this.stipend) : 
  super(name, rollNo, totalFees, pendingFees, isPaid, subject);

  void internship() {
    print("$name works for $company. He/she is working for $duration months at a monthly stipend of Rs.$stipend");
  }
}

void main() {
  print("Student class information: ");
  Student student = new Student("Heet Solanki", 68, 175000, 0, true);
  student.displayInfo();
  student.feeInformation();
  student.makePayment();
  student.paymentStatus();

  print("-----------------------");
  print("BCA Student class information: ");

  BCAStudent bca = new BCAStudent("Heet Solanki", 56, 175000, 0, false, "Python");
  bca.selectSubject();

  print("-----------------------");
  print("Commerce Student class information: ");

  CommerceStudent com = new CommerceStudent("Heet Solanki", 68, 15000, 5000, false, "Accounts");
  com.selectSubject();

  print("-----------------------");
  print("BCA Intern class information: ");

  BCAIntern bcaIntern = new BCAIntern("Heet Solanki", 68, 175000, 75000, false, "Python", "IIDE", 6, 35000);
  bcaIntern.internship();

  print("-----------------------");
  print("Commerce Intern class information: ");

  CommerceIntern comIntern = new CommerceIntern("Heet Solanki", 56, 15000, 0, true, "Accounts", "EY", 12, 105500);
  comIntern.internship();
}