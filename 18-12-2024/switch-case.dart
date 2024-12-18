void main() {
  int couponCode = 103;
  switch(couponCode) {
    case 101:
      print("Discount: 10%");
      break;
    case 102:
      print("Discount: 20%");
      break;
    case 103:
      print("Discount: 30%");
      break;
    case 105:
    case 106:
      print("Discount: 50%");
      break;
    default:
      print("Invalid Coupon Code");
      break;
  }
}