void convertToFarenheit({celsius}) {
  double farenheit = (celsius * (9 / 5) + 32);
  print("$celsius °C = ${farenheit.toStringAsFixed(2)} °F");
}

void convertToCelsius({fahrenheit}) {
  double celsius = (fahrenheit - 32) * 5 / 9;
  print("$fahrenheit °F = ${celsius.toStringAsFixed(2)} °C");
}

void main() {
  convertToFarenheit(celsius: 25);
  convertToCelsius(fahrenheit: 68.5);
}