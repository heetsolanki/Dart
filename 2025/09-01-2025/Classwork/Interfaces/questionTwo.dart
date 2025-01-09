class Sports {
  void selectSports() {
    print("I am in the sports class");
  }
}

class Music {
  void selectMusic() {
    print("I am in the music class");
  }
}

class Student implements Sports, Music {
  void selectSports() {
    print("I chose Cricket");
  }
  void selectMusic() {
    print("I chose Guitar");
  }
}

void main() {
  Student student = new Student();
  student.selectSports();
  student.selectMusic();
}