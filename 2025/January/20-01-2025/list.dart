void main() {
  var codesList = List<int>.filled(3, 0, growable: true);
  var electronicsList = List<String>.filled(3, "EC", growable: true);

  // codesList
  codesList[0] = 101;
  codesList[1] = 102;
  codesList[2] = 103;
  codesList.add(104);
  codesList.addAll([105, 106, 107]);
  print(codesList);

  if(codesList.isNotEmpty) {
    codesList.remove(103);
    codesList.removeAt(5);
  }
  print(codesList);
  codesList.replaceRange(2, 4, [201, 202]);
  print(codesList);

  // electronicsList
  electronicsList[0] = "EC101";
  electronicsList[1] = "EC102";
  electronicsList[2] = "EC103";
  electronicsList.add("EC104");
  electronicsList.addAll(["EC105", "EC106", "EC107"]);
  print(electronicsList);
  if(electronicsList.isNotEmpty) {
    electronicsList.remove("EC103");
    electronicsList.removeAt(5);
  }
  print(electronicsList);
  electronicsList.replaceRange(2, 4, ["EC201", "EC202"]);
  print(electronicsList);
}