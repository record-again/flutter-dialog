import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
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
        title: const Text('Home Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Success"),
                    content: const Text("Saved successfully"),
                    actions: [
                      ElevatedButton(
                          onPressed: () {}, child: const Text('CLOSE')),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('SUBMIT'))
                    ],
                  );
                });
          },
          child: const Text('Dialog'),
        ),
      ),
    );
  }
}
//end