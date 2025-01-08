class Student {
  String? name;
  int? age;

  String? get studentName {
    return name;
  }

  void set studentName(String? name) {
    this.name = name;
  }
  
  void set studentAge(int? age) {
    if(age! <= 0) {
      print('Age must be greater than 0.');
    } else {
      this.age = age;
    }
  }

  int? get studentAge {
    return age;
  }
}

void main() {
  Student student = new Student();
  student.studentName = 'Heet Solanki';
  student.studentAge = 18;
  print(student.name);
  print(student.age);
}