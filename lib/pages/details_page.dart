import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoe Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Add an Image widget to display the shoe image
            Container(
              height: 200, // Set the height of the image container
              // Placeholder for the image
              color: Colors.grey,
              child: Image.asset(
                'assets/images/shoes.jpg',
                fit: BoxFit
                    .cover, // Adjust the image's size to fit the container
              ),
            ),
            const SizedBox(
                height: 16), // Add some space between the image and text
            Text(
              'Shoe Name', // Replace 'Shoe Name' with the actual shoe name
              style: TextStyle(
                fontSize: 24, // Custom font size
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
            const SizedBox(
                height: 8), // Add some space between the title and description
            Text(
              'Shoe Description', // Replace 'Shoe Description' with the actual shoe description
              style: TextStyle(
                fontSize: 16, // Custom font size
              ),
            ),
            const SizedBox(
                height:
                    16), // Add some space between the description and other details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '\$99.99', // Replace '99.99' with the actual price
                  style: TextStyle(
                    fontSize: 20, // Custom font size
                    fontWeight: FontWeight.bold, // Bold text
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add logic for adding the item to the cart or making a purchase
                  },
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
