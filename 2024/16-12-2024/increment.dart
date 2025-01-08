  void main() {
    for(var i = 0; i < 30; i = i + 4) {
      if(i == 16 || i == 24) {
        continue;
      }
      print(i);
    }
  }