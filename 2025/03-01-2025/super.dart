class Animal {
  String? name = "Tommy";
  String? type = "Cat";
  String? breed = "Persian";
  int? age = 5;
  bool? adoptionStatus = false;

  // Animal(this.name, this.type, this.breed, this.age, this.adoptionStatus);

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

class CircusAnimal extends Animal {
  int? popularityRating;

  void displayPopularityRating() {
    print("The ${this.type} has a popularity rating of ${this.popularityRating}.");
  }

  void vaccinate() {
    super.vaccinate();
    print("The ${this.type} has undergone the vaccination process.");
  }
}

void main() {
  CircusAnimal circusAnimal = new CircusAnimal();
  circusAnimal.popularityRating = 4;
  circusAnimal.fetchAdoptionStatus();
  circusAnimal.vaccinate();
}