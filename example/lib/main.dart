import 'package:dashed_color_circle/dashed_color_circle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashed Color Circle Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            DashedColorCircle(),
            DashedColorCircle(
              size: 100.0,
              strokeWidth: 24.0,
              emptyColor: Colors.grey,
              filledColor: Colors.red,
              fillCount: 1,
              strokeCap: StrokeCap.square,
            ),
            DashedColorCircle(
              dashes: 20,
              emptyColor: Colors.black,
              size: 200.0,
              gapSize: 10.0,
              strokeWidth: 20.0,
            ),
            DashedColorCircle(
              dashes: 10,
              emptyColor: Colors.grey,
              filledColor: Colors.red,
              fillCount: 4,
              size: 200.0,
              gapSize: 10.0,
              strokeWidth: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
