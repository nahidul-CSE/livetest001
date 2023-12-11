void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'orange', 'color': 'orange', 'price': 221},
    {'name': 'mango', 'color': 'red', 'price': 67},
    {'name': 'banana', 'color': 'yellow', 'price': 10},
  ];
  print('Original Fruit Details before Discount:\n');
  void displayFruitDetails(List<Map<String, dynamic>> fruits) {

    for (var fruit in fruits) {
      print('Name: ${fruit['name']}, Color: ${fruit['color']}, Price: ${fruit['price']}');
    }
  }

  void applyDiscount(List<Map<String, dynamic>> fruits, int discountPercentage) {
    for (var fruit in fruits) {
      double discountAmount = fruit['price'] * discountPercentage / 100;
      fruit['price'] -= discountAmount;
    }
  }

  displayFruitDetails(fruits.toList());
  int discountPercentage = 10;
  applyDiscount(fruits, discountPercentage);
  print('\nFruit Details After Applying $discountPercentage% Discount:');
  displayFruitDetails(fruits);
}
