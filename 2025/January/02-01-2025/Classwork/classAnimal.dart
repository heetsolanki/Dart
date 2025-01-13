class Animal {
  String? type;
  String? name;
  String? breed;
  int? age;
  bool? adoptionStatus;
  static String zooName = "Kaziranga National Park";

  static void showZooName() {
    print(zooName);
    // print(age); // Error as instance variable accessed
  }

  void vaccinate() {
    if(age !> 5) 
      print("Ready for vaccination.");
    else
      print("Not elegible for vaccination.");
  }

  void setDiet() {
    print("The diet is veg.");
  }

  void fetchAdoptionStatus() {
    print(this.adoptionStatus);
  }
}

void main() {
  Animal.showZooName(); // Accessing static variable
  Animal animal = new Animal();
  animal.type = "Wild";
  animal.breed = "Elephant";
  animal.age = 12;
  animal.adoptionStatus = true;
  animal.vaccinate();
  animal.setDiet();
  animal.fetchAdoptionStatus();
}