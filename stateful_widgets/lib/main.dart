import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  void onClicked() {
    // setState() runs to update the UI by calling build() again
    setState(() {
      // Note: counter++ is not necessariliy inside of setState()
      // But! it is strongly recommended to make it more reaadable!
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFEFEFE),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: onClicked,
                icon: const Icon(
                  Icons.add_box,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
