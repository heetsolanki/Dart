void currencyConverter(String currency) {
  switch(currency) {
    case 'usd': // Unites States Dollar
      print("1 INR = 0.012 USD");
      break;
    case 'aud': // Australian Dolla
      print("1 INR = 0.019 AUD");
      break;
    case 'gbp': // Sterling Pound
      print("1 INR = 0.0093 GBP");
      break;
    case 'yen': // Japanese Yen
      print("1 INR = 1.83 YEN");
      break;
    case 'sgd': // Singaporean Dollar
      print("1 INR = 0.016 SGD");
      break;
    case 'vnd': // Vietnamese Dollar
      print("1 INR = 296.73 VND");
      break;
  }
}

void main() {
  String currency = "vnd";
  currencyConverter(currency);
}
