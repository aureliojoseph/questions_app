// ignore_for_file: avoid_print

class Product {
  String name;
  double price;
  String description;

  Product(this.name, this.price, this.description);
}

main() {
  var product1 = Product('Milk', 3.99, 'A gallon of milk');
  var product2 = Product('Bread', 2.99, 'A loaf of bread');
  print(
    'Product: ${product1.name} - Price: \$${product1.price} - Description: ${product1.description}',
  );
  print(
    'Product: ${product2.name} - Price: \$${product2.price} - Description: ${product2.description}',
  );
}
// TRY THIS: Add a new product to the list of products.
// TRY THIS: Add a new field to the Product class, such as a String for the
// product's description. Then, add a description to each product and print it
// out.