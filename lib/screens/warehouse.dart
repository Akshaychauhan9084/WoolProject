import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:typed_data';

class WarehousePage extends StatefulWidget {
  @override
  _WarehousePageState createState() => _WarehousePageState();
}

class _WarehousePageState extends State<WarehousePage> {
  List<Map<String, dynamic>> products = []; // List to store added products
  File? pickedImage; // Initialize to null with '?'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(title: Text('Warehouse',style: TextStyle(color: Colors.black,fontSize: 30),),backgroundColor: Colors.transparent,elevation: 0  ,leading: const BackButton(
    color: Colors.black, // <-- SEE HERE
  ),
  centerTitle: true,),

      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16), // Padding within the card
                title: Text(
                  'Product Name: ${products[index]['name']}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Quantity: ${products[index]['quantity']}'),
                    Text('Measurement Unit: ${products[index]['unit']}'),
                    Text('Description: ${products[index]['description']}'),
                    if (products[index]['image'] != null)
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Image.memory(
                          Uint8List.fromList(products[index]['image']),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddProductDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF3944BC),
      ),
    );
  }

  // Function to show a dialog for adding a product
  Future<void> _showAddProductDialog(BuildContext context) async {
    final picker = ImagePicker();

    Map<String, dynamic>? newProduct = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (BuildContext context) {
        String productName = '';
        String quantity = '';
        String unit = '';
        String description = '';

        return AlertDialog(
          title: Text('Add a Product'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () async {
                  // Open the image picker
                  final image = await picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    setState(() {
                      pickedImage = File(image.path);
                    });
                  }
                },
                child: pickedImage != null
                    ? Image.file(
                        pickedImage!,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey[300],
                        child: Icon(
                          Icons.camera_alt,
                          size: 40,
                        ),
                      ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Product Name'),
                onChanged: (value) {
                  productName = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Quantity'),
                onChanged: (value) {
                  quantity = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Measurement Unit'),
                onChanged: (value) {
                  unit = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Description'),
                onChanged: (value) {
                  description = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (productName.isNotEmpty && quantity.isNotEmpty && unit.isNotEmpty) {
                  Map<String, dynamic> productData = {
                    'name': productName,
                    'quantity': quantity,
                    'unit': unit,
                    'description': description,
                    'image': pickedImage != null ? pickedImage!.readAsBytesSync() : null,
                  };
                  // Add the product to the list and update the UI
                  setState(() {
                    products.add(productData);
                  });
                  Navigator.of(context).pop(productData);
                }
              },
              child: Text(
                'Add',
                style: TextStyle(color: Color(0xFF3944BC)),
              ),
            ),
          ],
        );
      },
    );

    if (newProduct != null) {
      // Handle the newly added product here if needed
    }
  }
}
