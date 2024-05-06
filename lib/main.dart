import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

/// ListView,
/// ListTile,

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EPAM GMP 2024Q2',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Module 1 - Flutter Basics'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Center(
                child: Text(
                  'Hello World!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                    'https://fastly.picsum.photos/id/1015/600/400.jpg?hmac=tPonaXlfk6h4b60UAWLppeEvDelLS838XzWucEdHk5o'),
              ),
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      'Prev',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Theme.of(context).primaryColor,
                    child: const Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                    subtitle: Text('Subtitle $index'),
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text('$index',
                          style: const TextStyle(color: Colors.white)),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Add your onTap code here!
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
