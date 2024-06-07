import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Go to First Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/firstpage');
              },
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Number of product items
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Product ${index + 1}'),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/details',
                        arguments: {'productName': 'Product ${index + 1}'},
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
