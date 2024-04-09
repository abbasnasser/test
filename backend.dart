import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;

class Customers {
  addNewCustomer(customer_name, phone, location) {
    var filePath = p.join(Directory.current.path, 'database', 'customers.json');
    File file = File(filePath);
    var fileContent = file.readAsStringSync();
    Map allusers = json.decode(fileContent);
    Map newuser = {"name": customer_name, "location": location};
    allusers[phone] = newuser;
    String newdata = json.encode(allusers);
    print(newdata);
    file.writeAsString(newdata,
        flush: true, encoding: utf8, mode: FileMode.write);
  }

  getCustomer() {
    var filePath = p.join(Directory.current.path, 'database', 'customers.json');
    File file = File(filePath);
    var fileContent = file.readAsStringSync();
    Map valueMap = json.decode(fileContent);
    return valueMap;
  }
}

class Products {
  addProducts(product_name, quality, price) {
    var filePath = p.join(Directory.current.path, 'database', 'products.json');
    File file = File(filePath);
    var fileContent = file.readAsStringSync();
    Map allusers = json.decode(fileContent);
    print(allusers);
    Map newuser = {"quantity": quality, "price": price};
    allusers[product_name] = newuser;
    String newdata = json.encode(allusers);
    print(newdata);
    file.writeAsString(newdata,
        flush: true, encoding: utf8, mode: FileMode.write);
  }

  getProducts() {
    var filePath = p.join(Directory.current.path, 'database', 'products.json');
    File file = File(filePath);
    var fileContent = file.readAsStringSync();
    Map valueMap = json.decode(fileContent);
    return valueMap;
  }
}
