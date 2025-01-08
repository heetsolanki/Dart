class Animal {
  String? name;
  String? type;
  String? breed;
  int? age;
  bool? adoptionStatus;

  Animal(this.name, this.type, this.breed, this.age, this.adoptionStatus);

  void vaccinate() {
    if(age! > 5) 
      print("The ${this.type} is ready for vaccination.");
    else 
      print("The ${this.type} is too young for vaccination.");
  }

  void fetchAdoptionStatus() {
    if (adoptionStatus == true) 
      print("CONGRATULATIONS! The ${this.type} is adopted");
    else
      print("SORRY! The ${this.type} is not adopted.");
  }
}

void main() {
  Animal cat = new Animal("Tommy", "Cat", "Persian", 5, false);
  cat.fetchAdoptionStatus();
  cat.vaccinate();
}